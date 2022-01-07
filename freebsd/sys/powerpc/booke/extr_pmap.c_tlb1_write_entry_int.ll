; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_tlb1_write_entry_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_tlb1_write_entry_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlbwrite_args = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"No free TLB1 entries!\0A\00", align 1
@SPR_MAS0 = common dso_local global i32 0, align 4
@SPR_MAS1 = common dso_local global i32 0, align 4
@SPR_MAS2 = common dso_local global i32 0, align 4
@SPR_MAS3 = common dso_local global i32 0, align 4
@SPR_MAS8 = common dso_local global i32 0, align 4
@SPR_MAS7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tlb1_write_entry_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tlb1_write_entry_int(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tlbwrite_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.tlbwrite_args*
  store %struct.tlbwrite_args* %7, %struct.tlbwrite_args** %3, align 8
  %8 = load %struct.tlbwrite_args*, %struct.tlbwrite_args** %3, align 8
  %9 = getelementptr inbounds %struct.tlbwrite_args, %struct.tlbwrite_args* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = call i32 (...) @tlb1_find_free()
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %13
  br label %20

20:                                               ; preds = %19, %1
  %21 = call i32 @MAS0_TLBSEL(i32 1)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @MAS0_ESEL(i32 %22)
  %24 = or i32 %21, %23
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @SPR_MAS0, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @mtspr(i32 %25, i32 %26)
  %28 = load i32, i32* @SPR_MAS1, align 4
  %29 = load %struct.tlbwrite_args*, %struct.tlbwrite_args** %3, align 8
  %30 = getelementptr inbounds %struct.tlbwrite_args, %struct.tlbwrite_args* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mtspr(i32 %28, i32 %33)
  %35 = load i32, i32* @SPR_MAS2, align 4
  %36 = load %struct.tlbwrite_args*, %struct.tlbwrite_args** %3, align 8
  %37 = getelementptr inbounds %struct.tlbwrite_args, %struct.tlbwrite_args* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @mtspr(i32 %35, i32 %40)
  %42 = load i32, i32* @SPR_MAS3, align 4
  %43 = load %struct.tlbwrite_args*, %struct.tlbwrite_args** %3, align 8
  %44 = getelementptr inbounds %struct.tlbwrite_args, %struct.tlbwrite_args* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mtspr(i32 %42, i32 %47)
  %49 = call i32 (...) @mfpvr()
  %50 = ashr i32 %49, 16
  %51 = and i32 %50, 65535
  switch i32 %51, label %63 [
    i32 131, label %52
    i32 129, label %52
    i32 128, label %52
    i32 130, label %55
  ]

52:                                               ; preds = %20, %20, %20
  %53 = load i32, i32* @SPR_MAS8, align 4
  %54 = call i32 @mtspr(i32 %53, i32 0)
  br label %55

55:                                               ; preds = %20, %52
  %56 = load i32, i32* @SPR_MAS7, align 4
  %57 = load %struct.tlbwrite_args*, %struct.tlbwrite_args** %3, align 8
  %58 = getelementptr inbounds %struct.tlbwrite_args, %struct.tlbwrite_args* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @mtspr(i32 %56, i32 %61)
  br label %64

63:                                               ; preds = %20
  br label %64

64:                                               ; preds = %63, %55
  call void asm sideeffect "isync; tlbwe; isync; msync", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  ret void
}

declare dso_local i32 @tlb1_find_free(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @MAS0_TLBSEL(i32) #1

declare dso_local i32 @MAS0_ESEL(i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @mfpvr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1141}

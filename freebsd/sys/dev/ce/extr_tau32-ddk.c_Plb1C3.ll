; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ce/extr_tau32-ddk.c_Plb1C3.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ce/extr_tau32-ddk.c_Plb1C3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@ALDl73 = common dso_local global i32 0, align 4
@cy2jE4 = common dso_local global i32 0, align 4
@tXFTB4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @Plb1C3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Plb1C3(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, 1
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* @ALDl73, align 4
  %14 = call i64 @hoRsQ4(i32 %13)
  store i64 %14, i64* %4, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @TifAa1(%struct.TYPE_13__* %15, i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %29

20:                                               ; preds = %1
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @TifAa1(%struct.TYPE_13__* %21, i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @cy2jE4, align 4
  store i32 %27, i32* %2, align 4
  br label %64

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %28, %19
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %31 = call i32 @WdqxE(%struct.TYPE_13__* %30, i32 4)
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 0
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %29
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  call void asm sideeffect "lock; addl $$0,(%esp)", "~{cc},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !4
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %42 = call i32 @RQO4U4(%struct.TYPE_13__* %41)
  %43 = call i64 (...) @FAUQ42()
  store i64 %43, i64* %4, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @TifAa1(%struct.TYPE_13__* %44, i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %58

49:                                               ; preds = %40
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @TifAa1(%struct.TYPE_13__* %50, i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @cy2jE4, align 4
  store i32 %56, i32* %2, align 4
  br label %64

57:                                               ; preds = %54
  br label %58

58:                                               ; preds = %57, %48
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %60 = call i32 @WdqxE(%struct.TYPE_13__* %59, i32 4)
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %62 = call i32 @yoLEn3(%struct.TYPE_13__* %61)
  %63 = load i32, i32* @tXFTB4, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %58, %55, %26
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @hoRsQ4(i32) #1

declare dso_local i32 @TifAa1(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @WdqxE(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @RQO4U4(%struct.TYPE_13__*) #1

declare dso_local i64 @FAUQ42(...) #1

declare dso_local i32 @yoLEn3(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1101}
!3 = !{i32 1124}
!4 = !{i32 1176}

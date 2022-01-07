; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcinfo/extr_rpcinfo.c_add_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcinfo/extr_rpcinfo.c_add_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcbdump_short = type { %struct.verslist* }
%struct.verslist = type { i64, %struct.verslist* }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpcbdump_short*, i64)* @add_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_version(%struct.rpcbdump_short* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpcbdump_short*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.verslist*, align 8
  store %struct.rpcbdump_short* %0, %struct.rpcbdump_short** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.rpcbdump_short*, %struct.rpcbdump_short** %4, align 8
  %8 = getelementptr inbounds %struct.rpcbdump_short, %struct.rpcbdump_short* %7, i32 0, i32 0
  %9 = load %struct.verslist*, %struct.verslist** %8, align 8
  store %struct.verslist* %9, %struct.verslist** %6, align 8
  br label %10

10:                                               ; preds = %21, %2
  %11 = load %struct.verslist*, %struct.verslist** %6, align 8
  %12 = icmp ne %struct.verslist* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load %struct.verslist*, %struct.verslist** %6, align 8
  %15 = getelementptr inbounds %struct.verslist, %struct.verslist* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %25

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.verslist*, %struct.verslist** %6, align 8
  %23 = getelementptr inbounds %struct.verslist, %struct.verslist* %22, i32 0, i32 1
  %24 = load %struct.verslist*, %struct.verslist** %23, align 8
  store %struct.verslist* %24, %struct.verslist** %6, align 8
  br label %10

25:                                               ; preds = %19, %10
  %26 = load %struct.verslist*, %struct.verslist** %6, align 8
  %27 = icmp ne %struct.verslist* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %3, align 4
  br label %50

30:                                               ; preds = %25
  %31 = call i64 @malloc(i32 16)
  %32 = inttoptr i64 %31 to %struct.verslist*
  store %struct.verslist* %32, %struct.verslist** %6, align 8
  %33 = load %struct.verslist*, %struct.verslist** %6, align 8
  %34 = icmp eq %struct.verslist* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %3, align 4
  br label %50

37:                                               ; preds = %30
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.verslist*, %struct.verslist** %6, align 8
  %40 = getelementptr inbounds %struct.verslist, %struct.verslist* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.rpcbdump_short*, %struct.rpcbdump_short** %4, align 8
  %42 = getelementptr inbounds %struct.rpcbdump_short, %struct.rpcbdump_short* %41, i32 0, i32 0
  %43 = load %struct.verslist*, %struct.verslist** %42, align 8
  %44 = load %struct.verslist*, %struct.verslist** %6, align 8
  %45 = getelementptr inbounds %struct.verslist, %struct.verslist* %44, i32 0, i32 1
  store %struct.verslist* %43, %struct.verslist** %45, align 8
  %46 = load %struct.verslist*, %struct.verslist** %6, align 8
  %47 = load %struct.rpcbdump_short*, %struct.rpcbdump_short** %4, align 8
  %48 = getelementptr inbounds %struct.rpcbdump_short, %struct.rpcbdump_short* %47, i32 0, i32 0
  store %struct.verslist* %46, %struct.verslist** %48, align 8
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %37, %35, %28
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

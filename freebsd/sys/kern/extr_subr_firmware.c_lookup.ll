; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_firmware.c_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_firmware.c_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv_fw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@FIRMWARE_MAX = common dso_local global i32 0, align 4
@firmware_table = common dso_local global %struct.priv_fw* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.priv_fw* (i8*, %struct.priv_fw**)* @lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.priv_fw* @lookup(i8* %0, %struct.priv_fw** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.priv_fw**, align 8
  %5 = alloca %struct.priv_fw*, align 8
  %6 = alloca %struct.priv_fw*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.priv_fw** %1, %struct.priv_fw*** %4, align 8
  store %struct.priv_fw* null, %struct.priv_fw** %5, align 8
  %8 = load %struct.priv_fw**, %struct.priv_fw*** %4, align 8
  %9 = icmp eq %struct.priv_fw** %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.priv_fw** %6, %struct.priv_fw*** %4, align 8
  br label %11

11:                                               ; preds = %10, %2
  %12 = load %struct.priv_fw**, %struct.priv_fw*** %4, align 8
  store %struct.priv_fw* null, %struct.priv_fw** %12, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %45, %11
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @FIRMWARE_MAX, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %48

17:                                               ; preds = %13
  %18 = load %struct.priv_fw*, %struct.priv_fw** @firmware_table, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.priv_fw, %struct.priv_fw* %18, i64 %20
  store %struct.priv_fw* %21, %struct.priv_fw** %5, align 8
  %22 = load %struct.priv_fw*, %struct.priv_fw** %5, align 8
  %23 = getelementptr inbounds %struct.priv_fw, %struct.priv_fw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %17
  %28 = load i8*, i8** %3, align 8
  %29 = load %struct.priv_fw*, %struct.priv_fw** %5, align 8
  %30 = getelementptr inbounds %struct.priv_fw, %struct.priv_fw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @strcasecmp(i8* %28, i32* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %48

36:                                               ; preds = %27, %17
  %37 = load %struct.priv_fw*, %struct.priv_fw** %5, align 8
  %38 = call i32 @FW_INUSE(%struct.priv_fw* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load %struct.priv_fw*, %struct.priv_fw** %5, align 8
  %42 = load %struct.priv_fw**, %struct.priv_fw*** %4, align 8
  store %struct.priv_fw* %41, %struct.priv_fw** %42, align 8
  br label %43

43:                                               ; preds = %40, %36
  br label %44

44:                                               ; preds = %43
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %13

48:                                               ; preds = %35, %13
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @FIRMWARE_MAX, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load %struct.priv_fw*, %struct.priv_fw** %5, align 8
  br label %55

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi %struct.priv_fw* [ %53, %52 ], [ null, %54 ]
  ret %struct.priv_fw* %56
}

declare dso_local i64 @strcasecmp(i8*, i32*) #1

declare dso_local i32 @FW_INUSE(%struct.priv_fw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

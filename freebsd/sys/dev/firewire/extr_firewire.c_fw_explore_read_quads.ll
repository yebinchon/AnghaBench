; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_explore_read_quads.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_explore_read_quads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_device = type { i32 }
%struct.fw_xfer = type { i32 }

@fw_xferwake = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_device*, i32, i32*, i32)* @fw_explore_read_quads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_explore_read_quads(%struct.fw_device* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fw_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fw_xfer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fw_device* %0, %struct.fw_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %52, %4
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %59

18:                                               ; preds = %14
  %19 = load %struct.fw_device*, %struct.fw_device** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = or i32 -268435456, %20
  %22 = load i32, i32* @fw_xferwake, align 4
  %23 = call %struct.fw_xfer* @fwmem_read_quad(%struct.fw_device* %19, i32* null, i32 -1, i32 65535, i32 %21, i32* %11, i32 %22)
  store %struct.fw_xfer* %23, %struct.fw_xfer** %10, align 8
  %24 = load %struct.fw_xfer*, %struct.fw_xfer** %10, align 8
  %25 = icmp eq %struct.fw_xfer* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 -1, i32* %5, align 4
  br label %60

27:                                               ; preds = %18
  %28 = load %struct.fw_xfer*, %struct.fw_xfer** %10, align 8
  %29 = call i32 @fw_xferwait(%struct.fw_xfer* %28)
  %30 = load %struct.fw_xfer*, %struct.fw_xfer** %10, align 8
  %31 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @ntohl(i32 %35)
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %36, i32* %40, align 4
  br label %41

41:                                               ; preds = %34, %27
  %42 = load %struct.fw_xfer*, %struct.fw_xfer** %10, align 8
  %43 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %13, align 4
  %45 = load %struct.fw_xfer*, %struct.fw_xfer** %10, align 8
  %46 = call i32 @fw_xfer_free(%struct.fw_xfer* %45)
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %5, align 4
  br label %60

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %56, 4
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %7, align 4
  br label %14

59:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %49, %26
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local %struct.fw_xfer* @fwmem_read_quad(%struct.fw_device*, i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @fw_xferwait(%struct.fw_xfer*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @fw_xfer_free(%struct.fw_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_xfer_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_xfer_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_xfer = type { i32 (%struct.fw_xfer*)*, i32* }

@.str = private unnamed_addr constant [14 x i8] c"hand == NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"fw_xfer_done: why xfer->fc is NULL?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fw_xfer_done(%struct.fw_xfer* %0) #0 {
  %2 = alloca %struct.fw_xfer*, align 8
  store %struct.fw_xfer* %0, %struct.fw_xfer** %2, align 8
  %3 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %4 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %3, i32 0, i32 0
  %5 = load i32 (%struct.fw_xfer*)*, i32 (%struct.fw_xfer*)** %4, align 8
  %6 = icmp eq i32 (%struct.fw_xfer*)* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %27

9:                                                ; preds = %1
  %10 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %11 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %9
  %17 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %18 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %21 = call i32 @fw_tl_free(i32* %19, %struct.fw_xfer* %20)
  %22 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %23 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %22, i32 0, i32 0
  %24 = load i32 (%struct.fw_xfer*)*, i32 (%struct.fw_xfer*)** %23, align 8
  %25 = load %struct.fw_xfer*, %struct.fw_xfer** %2, align 8
  %26 = call i32 %24(%struct.fw_xfer* %25)
  br label %27

27:                                               ; preds = %16, %7
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @fw_tl_free(i32*, %struct.fw_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

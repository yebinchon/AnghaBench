; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ips/extr_ips_commands.c_ips_update_nvram.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ips/extr_ips_commands.c_ips_update_nvram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@IPS_STATIC_FLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"ERROR: unable to get a command! can't update nvram\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"ERROR: nvram update command failed!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ips_update_nvram(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = load i32, i32* @IPS_STATIC_FLAG, align 4
  %7 = call i64 @ips_get_free_cmd(%struct.TYPE_4__* %5, i32** %4, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @device_printf(i32 %12, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %26

14:                                               ; preds = %1
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @ips_read_nvram(i32* %15)
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @COMMAND_ERROR(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %20, %14
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %9
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @ips_get_free_cmd(%struct.TYPE_4__*, i32**, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ips_read_nvram(i32*) #1

declare dso_local i64 @COMMAND_ERROR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

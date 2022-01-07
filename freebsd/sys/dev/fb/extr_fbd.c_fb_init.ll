; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_fbd.c_fb_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_fbd.c_fb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_list_entry = type { %struct.TYPE_2__*, %struct.fb_info* }
%struct.TYPE_2__ = type { %struct.fb_info* }
%struct.fb_info = type { %struct.TYPE_2__* }

@fb_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"fb%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_list_entry*, i32)* @fb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fb_init(%struct.fb_list_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_list_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  store %struct.fb_list_entry* %0, %struct.fb_list_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fb_list_entry*, %struct.fb_list_entry** %3, align 8
  %7 = getelementptr inbounds %struct.fb_list_entry, %struct.fb_list_entry* %6, i32 0, i32 1
  %8 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  store %struct.fb_info* %8, %struct.fb_info** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @UID_ROOT, align 4
  %11 = load i32, i32* @GID_WHEEL, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.TYPE_2__* @make_dev(i32* @fb_cdevsw, i32 %9, i32 %10, i32 %11, i32 384, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.fb_list_entry*, %struct.fb_list_entry** %3, align 8
  %15 = getelementptr inbounds %struct.fb_list_entry, %struct.fb_list_entry* %14, i32 0, i32 0
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %15, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %17 = load %struct.fb_list_entry*, %struct.fb_list_entry** %3, align 8
  %18 = getelementptr inbounds %struct.fb_list_entry, %struct.fb_list_entry* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.fb_info* %16, %struct.fb_info** %20, align 8
  %21 = load %struct.fb_list_entry*, %struct.fb_list_entry** %3, align 8
  %22 = getelementptr inbounds %struct.fb_list_entry, %struct.fb_list_entry* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 0
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %25, align 8
  ret i32 0
}

declare dso_local %struct.TYPE_2__* @make_dev(i32*, i32, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

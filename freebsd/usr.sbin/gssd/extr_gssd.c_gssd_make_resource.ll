; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/gssd/extr_gssd.c_gssd_make_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/gssd/extr_gssd.c_gssd_make_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_resource = type { i32, i8* }

@gss_next_id = common dso_local global i32 0, align 4
@gss_start_time = common dso_local global i64 0, align 8
@gss_resources = common dso_local global i32 0, align 4
@gr_link = common dso_local global i32 0, align 4
@gss_resource_count = common dso_local global i32 0, align 4
@debug_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%d resources allocated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gssd_make_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gssd_make_resource(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.gss_resource*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

8:                                                ; preds = %1
  %9 = call %struct.gss_resource* @malloc(i32 16)
  store %struct.gss_resource* %9, %struct.gss_resource** %4, align 8
  %10 = load %struct.gss_resource*, %struct.gss_resource** %4, align 8
  %11 = icmp ne %struct.gss_resource* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %39

13:                                               ; preds = %8
  %14 = load i32, i32* @gss_next_id, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @gss_next_id, align 4
  %16 = load i64, i64* @gss_start_time, align 8
  %17 = trunc i64 %16 to i32
  %18 = shl i32 %17, 32
  %19 = add nsw i32 %14, %18
  %20 = load %struct.gss_resource*, %struct.gss_resource** %4, align 8
  %21 = getelementptr inbounds %struct.gss_resource, %struct.gss_resource* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = load %struct.gss_resource*, %struct.gss_resource** %4, align 8
  %24 = getelementptr inbounds %struct.gss_resource, %struct.gss_resource* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.gss_resource*, %struct.gss_resource** %4, align 8
  %26 = load i32, i32* @gr_link, align 4
  %27 = call i32 @LIST_INSERT_HEAD(i32* @gss_resources, %struct.gss_resource* %25, i32 %26)
  %28 = load i32, i32* @gss_resource_count, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @gss_resource_count, align 4
  %30 = load i32, i32* @debug_level, align 4
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %13
  %33 = load i32, i32* @gss_resource_count, align 4
  %34 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %32, %13
  %36 = load %struct.gss_resource*, %struct.gss_resource** %4, align 8
  %37 = getelementptr inbounds %struct.gss_resource, %struct.gss_resource* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %35, %12, %7
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.gss_resource* @malloc(i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.gss_resource*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

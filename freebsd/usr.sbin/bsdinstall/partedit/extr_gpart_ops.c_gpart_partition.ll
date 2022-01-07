; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsdinstall/partedit/extr_gpart_ops.c_gpart_partition.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsdinstall/partedit/extr_gpart_ops.c_gpart_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.gctl_req = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [95 x i8] c"This partition scheme (%s) is not bootable on this platform. Are you sure you want to proceed?\00", align 1
@TRUE = common dso_local global i32 0, align 4
@dialog_vars = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Warning\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"PART\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@GPART_FLAGS = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"scheme\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"verb\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpart_partition(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gctl_req*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [512 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %10

10:                                               ; preds = %61, %33, %2
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %10
  %14 = call i32 (...) @default_scheme()
  %15 = call i8* @choose_part_type(i32 %14)
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %77

19:                                               ; preds = %13
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @is_scheme_bootable(i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_vars, i32 0, i32 0), align 4
  %28 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %29 = call i32 @dialog_yesno(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %28, i32 0, i32 0)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_vars, i32 0, i32 0), align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i8* null, i8** %5, align 8
  br label %10

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %19
  br label %36

36:                                               ; preds = %35, %10
  %37 = call %struct.gctl_req* (...) @gctl_get_handle()
  store %struct.gctl_req* %37, %struct.gctl_req** %7, align 8
  %38 = load %struct.gctl_req*, %struct.gctl_req** %7, align 8
  %39 = call i32 @gctl_ro_param(%struct.gctl_req* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %40 = load %struct.gctl_req*, %struct.gctl_req** %7, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @gctl_ro_param(%struct.gctl_req* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 -1, i8* %41)
  %43 = load %struct.gctl_req*, %struct.gctl_req** %7, align 8
  %44 = load i8*, i8** @GPART_FLAGS, align 8
  %45 = call i32 @gctl_ro_param(%struct.gctl_req* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 -1, i8* %44)
  %46 = load %struct.gctl_req*, %struct.gctl_req** %7, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @gctl_ro_param(%struct.gctl_req* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 -1, i8* %47)
  %49 = load %struct.gctl_req*, %struct.gctl_req** %7, align 8
  %50 = call i32 @gctl_ro_param(%struct.gctl_req* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %51 = load %struct.gctl_req*, %struct.gctl_req** %7, align 8
  %52 = call i8* @gctl_issue(%struct.gctl_req* %51)
  store i8* %52, i8** %8, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %36
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @gpart_show_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32* null, i8* %62)
  %64 = load %struct.gctl_req*, %struct.gctl_req** %7, align 8
  %65 = call i32 @gctl_free(%struct.gctl_req* %64)
  store i8* null, i8** %5, align 8
  br label %10

66:                                               ; preds = %55, %36
  %67 = load %struct.gctl_req*, %struct.gctl_req** %7, align 8
  %68 = call i32 @gctl_free(%struct.gctl_req* %67)
  %69 = load i8*, i8** %5, align 8
  %70 = call i32* @bootcode_path(i8* %69)
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i8*, i8** %4, align 8
  %74 = call %struct.TYPE_3__* @get_part_metadata(i8* %73, i32 1)
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %72, %66
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %18
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i8* @choose_part_type(i32) #1

declare dso_local i32 @default_scheme(...) #1

declare dso_local i32 @is_scheme_bootable(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @dialog_yesno(i8*, i8*, i32, i32) #1

declare dso_local %struct.gctl_req* @gctl_get_handle(...) #1

declare dso_local i32 @gctl_ro_param(%struct.gctl_req*, i8*, i32, i8*) #1

declare dso_local i8* @gctl_issue(%struct.gctl_req*) #1

declare dso_local i32 @gpart_show_error(i8*, i32*, i8*) #1

declare dso_local i32 @gctl_free(%struct.gctl_req*) #1

declare dso_local i32* @bootcode_path(i8*) #1

declare dso_local %struct.TYPE_3__* @get_part_metadata(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

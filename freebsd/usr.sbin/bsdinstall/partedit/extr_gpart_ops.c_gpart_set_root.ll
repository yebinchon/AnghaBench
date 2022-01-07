; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsdinstall/partedit/extr_gpart_ops.c_gpart_set_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsdinstall/partedit/extr_gpart_ops.c_gpart_set_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"PART\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"verb\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"attrib\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Error setting parameter on disk:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gpart_set_root(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gctl_req*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = call %struct.gctl_req* (...) @gctl_get_handle()
  store %struct.gctl_req* %7, %struct.gctl_req** %5, align 8
  %8 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %9 = call i32 @gctl_ro_param(%struct.gctl_req* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %10 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @gctl_ro_param(%struct.gctl_req* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 -1, i8* %11)
  %13 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %14 = call i32 @gctl_ro_param(%struct.gctl_req* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %15 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %16 = call i32 @gctl_ro_param(%struct.gctl_req* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %17 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @gctl_ro_param(%struct.gctl_req* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 -1, i8* %18)
  %20 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %21 = call i8* @gctl_issue(%struct.gctl_req* %20)
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @gpart_show_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %30, %24, %2
  %34 = load %struct.gctl_req*, %struct.gctl_req** %5, align 8
  %35 = call i32 @gctl_free(%struct.gctl_req* %34)
  ret void
}

declare dso_local %struct.gctl_req* @gctl_get_handle(...) #1

declare dso_local i32 @gctl_ro_param(%struct.gctl_req*, i8*, i32, i8*) #1

declare dso_local i8* @gctl_issue(%struct.gctl_req*) #1

declare dso_local i32 @gpart_show_error(i8*, i8*, i8*) #1

declare dso_local i32 @gctl_free(%struct.gctl_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/devinfo/extr_devinfo.c_print_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/devinfo/extr_devinfo.c_print_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devinfo_res = type { i32, i32, i32 }
%struct.devinfo_rman = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"0x%jx\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%ju\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"-0x%jx\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"-%ju\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_resource(%struct.devinfo_res* %0) #0 {
  %2 = alloca %struct.devinfo_res*, align 8
  %3 = alloca %struct.devinfo_rman*, align 8
  %4 = alloca i32, align 4
  store %struct.devinfo_res* %0, %struct.devinfo_res** %2, align 8
  %5 = load %struct.devinfo_res*, %struct.devinfo_res** %2, align 8
  %6 = getelementptr inbounds %struct.devinfo_res, %struct.devinfo_res* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.devinfo_rman* @devinfo_handle_to_rman(i32 %7)
  store %struct.devinfo_rman* %8, %struct.devinfo_rman** %3, align 8
  %9 = load %struct.devinfo_rman*, %struct.devinfo_rman** %3, align 8
  %10 = getelementptr inbounds %struct.devinfo_rman, %struct.devinfo_rman* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %11, 1000
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.devinfo_rman*, %struct.devinfo_rman** %3, align 8
  %15 = getelementptr inbounds %struct.devinfo_rman, %struct.devinfo_rman* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br label %18

18:                                               ; preds = %13, %1
  %19 = phi i1 [ true, %1 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  %25 = load %struct.devinfo_res*, %struct.devinfo_res** %2, align 8
  %26 = getelementptr inbounds %struct.devinfo_res, %struct.devinfo_res* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @printf(i8* %24, i32 %27)
  %29 = load %struct.devinfo_res*, %struct.devinfo_res** %2, align 8
  %30 = getelementptr inbounds %struct.devinfo_res, %struct.devinfo_res* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %47

33:                                               ; preds = %18
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %38 = load %struct.devinfo_res*, %struct.devinfo_res** %2, align 8
  %39 = getelementptr inbounds %struct.devinfo_res, %struct.devinfo_res* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.devinfo_res*, %struct.devinfo_res** %2, align 8
  %42 = getelementptr inbounds %struct.devinfo_res, %struct.devinfo_res* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %40, %43
  %45 = sub nsw i32 %44, 1
  %46 = call i32 @printf(i8* %37, i32 %45)
  br label %47

47:                                               ; preds = %33, %18
  ret void
}

declare dso_local %struct.devinfo_rman* @devinfo_handle_to_rman(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

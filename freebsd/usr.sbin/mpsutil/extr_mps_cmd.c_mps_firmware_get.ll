; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mpsutil/extr_mps_cmd.c_mps_firmware_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mpsutil/extr_mps_cmd.c_mps_firmware_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@MPI2_FUNCTION_FW_UPLOAD = common dso_local global i32 0, align 4
@MPI2_FW_DOWNLOAD_ITYPE_BIOS = common dso_local global i32 0, align 4
@MPI2_FW_DOWNLOAD_ITYPE_FW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"calloc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mps_firmware_get(i32 %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca %struct.TYPE_6__, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8**, i8*** %6, align 8
  store i8* null, i8** %11, align 8
  %12 = call i32 @bzero(%struct.TYPE_6__* %8, i32 12)
  %13 = call i32 @bzero(%struct.TYPE_6__* %9, i32 12)
  %14 = load i32, i32* @MPI2_FUNCTION_FW_UPLOAD, align 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @MPI2_FW_DOWNLOAD_ITYPE_BIOS, align 4
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @MPI2_FW_DOWNLOAD_ITYPE_FW, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @mps_user_command(i32 %25, %struct.TYPE_6__* %8, i32 12, %struct.TYPE_6__* %9, i32 12, i8* null, i32 0, i32 0)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 -1, i32* %4, align 4
  br label %58

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 -1, i32* %4, align 4
  br label %58

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i8* @calloc(i32 %37, i32 1)
  %39 = load i8**, i8*** %6, align 8
  store i8* %38, i8** %39, align 8
  %40 = load i8**, i8*** %6, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %58

45:                                               ; preds = %34
  %46 = load i32, i32* %5, align 4
  %47 = load i8**, i8*** %6, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @mps_user_command(i32 %46, %struct.TYPE_6__* %8, i32 12, %struct.TYPE_6__* %9, i32 12, i8* %48, i32 %49, i32 0)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i8**, i8*** %6, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @free(i8* %54)
  store i32 -1, i32* %4, align 4
  br label %58

56:                                               ; preds = %45
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %52, %43, %33, %28
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @bzero(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @mps_user_command(i32, %struct.TYPE_6__*, i32, %struct.TYPE_6__*, i32, i8*, i32, i32) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

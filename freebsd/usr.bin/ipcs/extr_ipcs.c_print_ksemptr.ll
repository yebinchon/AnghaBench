; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ipcs/extr_ipcs.c_print_ksemptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ipcs/extr_ipcs.c_print_ksemptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.semid_kernel = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [25 x i8] c"s %12d %12d %s %-8s %-8s\00", align 1
@CREATOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c" %-8s %-8s\00", align 1
@BIGGEST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" %12d\00", align 1
@TIME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c" %s %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_ksemptr(i32 %0, i32 %1, %struct.semid_kernel* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.semid_kernel*, align 8
  %7 = alloca [100 x i8], align 16
  %8 = alloca [100 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.semid_kernel* %2, %struct.semid_kernel** %6, align 8
  %9 = load %struct.semid_kernel*, %struct.semid_kernel** %6, align 8
  %10 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %14 = call i32 @cvt_time(i32 %12, i8* %13)
  %15 = load %struct.semid_kernel*, %struct.semid_kernel** %6, align 8
  %16 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %20 = call i32 @cvt_time(i32 %18, i8* %19)
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.semid_kernel*, %struct.semid_kernel** %6, align 8
  %23 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = call i32 @IXSEQ_TO_IPCID(i32 %21, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %24)
  %26 = load %struct.semid_kernel*, %struct.semid_kernel** %6, align 8
  %27 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load %struct.semid_kernel*, %struct.semid_kernel** %6, align 8
  %33 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @fmt_perm(i32 %36)
  %38 = load %struct.semid_kernel*, %struct.semid_kernel** %6, align 8
  %39 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @user_from_uid(i32 %42, i32 0)
  %44 = load %struct.semid_kernel*, %struct.semid_kernel** %6, align 8
  %45 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @group_from_gid(i32 %48, i32 0)
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %31, i8* %37, i8* %43, i8* %49)
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @CREATOR, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %3
  %56 = load %struct.semid_kernel*, %struct.semid_kernel** %6, align 8
  %57 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @user_from_uid(i32 %60, i32 0)
  %62 = load %struct.semid_kernel*, %struct.semid_kernel** %6, align 8
  %63 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i8* @group_from_gid(i32 %66, i32 0)
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %61, i8* %67)
  br label %69

69:                                               ; preds = %55, %3
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @BIGGEST, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.semid_kernel*, %struct.semid_kernel** %6, align 8
  %76 = getelementptr inbounds %struct.semid_kernel, %struct.semid_kernel* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %74, %69
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @TIME, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %87 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %86, i8* %87)
  br label %89

89:                                               ; preds = %85, %80
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @cvt_time(i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @IXSEQ_TO_IPCID(i32, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8) #1

declare dso_local i8* @fmt_perm(i32) #1

declare dso_local i8* @user_from_uid(i32, i32) #1

declare dso_local i8* @group_from_gid(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ipcs/extr_ipcs.c_print_kshmptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ipcs/extr_ipcs.c_print_kshmptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shmid_kernel = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [25 x i8] c"m %12d %12d %s %-8s %-8s\00", align 1
@CREATOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c" %-8s %-8s\00", align 1
@OUTSTANDING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" %12d\00", align 1
@BIGGEST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c" %12zu\00", align 1
@PID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c" %12d %12d\00", align 1
@TIME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c" %s %s %s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_kshmptr(i32 %0, i32 %1, %struct.shmid_kernel* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.shmid_kernel*, align 8
  %7 = alloca [100 x i8], align 16
  %8 = alloca [100 x i8], align 16
  %9 = alloca [100 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.shmid_kernel* %2, %struct.shmid_kernel** %6, align 8
  %10 = load %struct.shmid_kernel*, %struct.shmid_kernel** %6, align 8
  %11 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %15 = call i32 @cvt_time(i32 %13, i8* %14)
  %16 = load %struct.shmid_kernel*, %struct.shmid_kernel** %6, align 8
  %17 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %21 = call i32 @cvt_time(i32 %19, i8* %20)
  %22 = load %struct.shmid_kernel*, %struct.shmid_kernel** %6, align 8
  %23 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %27 = call i32 @cvt_time(i32 %25, i8* %26)
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.shmid_kernel*, %struct.shmid_kernel** %6, align 8
  %30 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  %32 = call i32 @IXSEQ_TO_IPCID(i32 %28, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %31)
  %33 = load %struct.shmid_kernel*, %struct.shmid_kernel** %6, align 8
  %34 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = load %struct.shmid_kernel*, %struct.shmid_kernel** %6, align 8
  %40 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @fmt_perm(i32 %43)
  %45 = load %struct.shmid_kernel*, %struct.shmid_kernel** %6, align 8
  %46 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @user_from_uid(i32 %49, i32 0)
  %51 = load %struct.shmid_kernel*, %struct.shmid_kernel** %6, align 8
  %52 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @group_from_gid(i32 %55, i32 0)
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %38, i8* %44, i8* %50, i8* %56)
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @CREATOR, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %3
  %63 = load %struct.shmid_kernel*, %struct.shmid_kernel** %6, align 8
  %64 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @user_from_uid(i32 %67, i32 0)
  %69 = load %struct.shmid_kernel*, %struct.shmid_kernel** %6, align 8
  %70 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i8* @group_from_gid(i32 %73, i32 0)
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %68, i8* %74)
  br label %76

76:                                               ; preds = %62, %3
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @OUTSTANDING, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load %struct.shmid_kernel*, %struct.shmid_kernel** %6, align 8
  %83 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %81, %76
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @BIGGEST, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.shmid_kernel*, %struct.shmid_kernel** %6, align 8
  %94 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %92, %87
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @PID, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %98
  %104 = load %struct.shmid_kernel*, %struct.shmid_kernel** %6, align 8
  %105 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.shmid_kernel*, %struct.shmid_kernel** %6, align 8
  %109 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %107, i32 %111)
  br label %113

113:                                              ; preds = %103, %98
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @TIME, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %120 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %121 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %119, i8* %120, i8* %121)
  br label %123

123:                                              ; preds = %118, %113
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
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

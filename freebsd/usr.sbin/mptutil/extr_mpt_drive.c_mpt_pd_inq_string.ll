; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_drive.c_mpt_pd_inq_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_drive.c_mpt_pd_inq_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@mpt_pd_inq_string.inq_string = internal global [64 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"ATA\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"<%s %s> SATA\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"<%s %s %s> SAS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mpt_pd_inq_string(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca [9 x i8], align 1
  %5 = alloca [17 x i8], align 16
  %6 = alloca [5 x i8], align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @cam_strvis(i8* %9, i32 %12, i32 4, i32 9)
  %14 = getelementptr inbounds [17 x i8], [17 x i8]* %5, i64 0, i64 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cam_strvis(i8* %14, i32 %17, i32 4, i32 17)
  %19 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @cam_strvis(i8* %19, i32 %22, i32 4, i32 5)
  %24 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = getelementptr inbounds [17 x i8], [17 x i8]* %5, i64 0, i64 0
  %29 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %30 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @mpt_pd_inq_string.inq_string, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %28, i8* %29)
  br label %36

31:                                               ; preds = %1
  %32 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %33 = getelementptr inbounds [17 x i8], [17 x i8]* %5, i64 0, i64 0
  %34 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %35 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @mpt_pd_inq_string.inq_string, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %32, i8* %33, i8* %34)
  br label %36

36:                                               ; preds = %31, %27
  ret i8* getelementptr inbounds ([64 x i8], [64 x i8]* @mpt_pd_inq_string.inq_string, i64 0, i64 0)
}

declare dso_local i32 @cam_strvis(i8*, i32, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

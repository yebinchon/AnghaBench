; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_cmd.c_mpt_volume_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_cmd.c_mpt_volume_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_query_disk = type { i8* }

@mpt_volume_name.info = internal global %struct.mpt_query_disk zeroinitializer, align 8
@mpt_volume_name.buf = internal global [16 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mpt_volume_name(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @mpt_query_disk(i32 %6, i32 %7, %struct.mpt_query_disk* @mpt_volume_name.info)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @mpt_volume_name.buf, i64 0, i64 0), i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %20

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @mpt_volume_name.buf, i64 0, i64 0), i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %13
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @mpt_volume_name.buf, i64 0, i64 0), i8** %3, align 8
  br label %23

21:                                               ; preds = %2
  %22 = load i8*, i8** getelementptr inbounds (%struct.mpt_query_disk, %struct.mpt_query_disk* @mpt_volume_name.info, i32 0, i32 0), align 8
  store i8* %22, i8** %3, align 8
  br label %23

23:                                               ; preds = %21, %20
  %24 = load i8*, i8** %3, align 8
  ret i8* %24
}

declare dso_local i64 @mpt_query_disk(i32, i32, %struct.mpt_query_disk*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

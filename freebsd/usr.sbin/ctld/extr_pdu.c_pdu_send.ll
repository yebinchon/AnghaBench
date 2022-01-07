; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_pdu.c_pdu_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_pdu.c_pdu_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdu = type { i32, %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.iovec = type { i32, i32* }

@proxy_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"exiting due to timeout\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"writev\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"short write\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdu_send(%struct.pdu* %0) #0 {
  %2 = alloca %struct.pdu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x %struct.iovec], align 16
  %8 = alloca i32, align 4
  store %struct.pdu* %0, %struct.pdu** %2, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @proxy_mode, align 4
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.pdu*, %struct.pdu** %2, align 8
  %14 = load %struct.pdu*, %struct.pdu** %2, align 8
  %15 = getelementptr inbounds %struct.pdu, %struct.pdu* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @pdu_set_data_segment_length(%struct.pdu* %13, i32 %16)
  %18 = load %struct.pdu*, %struct.pdu** %2, align 8
  %19 = getelementptr inbounds %struct.pdu, %struct.pdu* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %7, i64 0, i64 0
  %22 = getelementptr inbounds %struct.iovec, %struct.iovec* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %7, i64 0, i64 0
  %24 = getelementptr inbounds %struct.iovec, %struct.iovec* %23, i32 0, i32 0
  store i32 4, i32* %24, align 16
  %25 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %7, i64 0, i64 0
  %26 = getelementptr inbounds %struct.iovec, %struct.iovec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 16
  store i32 %27, i32* %4, align 4
  store i32 1, i32* %8, align 4
  %28 = load %struct.pdu*, %struct.pdu** %2, align 8
  %29 = getelementptr inbounds %struct.pdu, %struct.pdu* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %69

32:                                               ; preds = %1
  %33 = load %struct.pdu*, %struct.pdu** %2, align 8
  %34 = getelementptr inbounds %struct.pdu, %struct.pdu* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %7, i64 0, i64 1
  %37 = getelementptr inbounds %struct.iovec, %struct.iovec* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  %38 = load %struct.pdu*, %struct.pdu** %2, align 8
  %39 = getelementptr inbounds %struct.pdu, %struct.pdu* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %7, i64 0, i64 1
  %42 = getelementptr inbounds %struct.iovec, %struct.iovec* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 16
  %43 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %7, i64 0, i64 1
  %44 = getelementptr inbounds %struct.iovec, %struct.iovec* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 16
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %4, align 4
  store i32 2, i32* %8, align 4
  %48 = load %struct.pdu*, %struct.pdu** %2, align 8
  %49 = call i64 @pdu_padding(%struct.pdu* %48)
  store i64 %49, i64* %5, align 8
  %50 = load i64, i64* %5, align 8
  %51 = icmp ugt i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %32
  %53 = load i64, i64* %5, align 8
  %54 = icmp ult i64 %53, 4
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %7, i64 0, i64 2
  %58 = getelementptr inbounds %struct.iovec, %struct.iovec* %57, i32 0, i32 1
  store i32* %6, i32** %58, align 8
  %59 = load i64, i64* %5, align 8
  %60 = trunc i64 %59 to i32
  %61 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %7, i64 0, i64 2
  %62 = getelementptr inbounds %struct.iovec, %struct.iovec* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 16
  %63 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %7, i64 0, i64 2
  %64 = getelementptr inbounds %struct.iovec, %struct.iovec* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 16
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %4, align 4
  store i32 3, i32* %8, align 4
  br label %68

68:                                               ; preds = %52, %32
  br label %69

69:                                               ; preds = %68, %1
  %70 = load %struct.pdu*, %struct.pdu** %2, align 8
  %71 = getelementptr inbounds %struct.pdu, %struct.pdu* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %7, i64 0, i64 0
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @writev(i32 %74, %struct.iovec* %75, i32 %76)
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* %3, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %69
  %81 = call i64 (...) @timed_out()
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %80
  %86 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %69
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %87
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pdu_set_data_segment_length(%struct.pdu*, i32) #1

declare dso_local i64 @pdu_padding(%struct.pdu*) #1

declare dso_local i32 @writev(i32, %struct.iovec*, i32) #1

declare dso_local i64 @timed_out(...) #1

declare dso_local i32 @log_errx(i32, i8*) #1

declare dso_local i32 @log_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

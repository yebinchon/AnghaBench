; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_pdu.c_pdu_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_pdu.c_pdu_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdu = type { i32, i32*, i32*, %struct.connection* }
%struct.connection = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.iovec = type { i32, i32* }

@.str = private unnamed_addr constant [23 x i8] c"exiting due to timeout\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"writev\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"short write\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdu_send(%struct.pdu* %0) #0 {
  %2 = alloca %struct.pdu*, align 8
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x %struct.iovec], align 16
  %9 = alloca i32, align 4
  store %struct.pdu* %0, %struct.pdu** %2, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.pdu*, %struct.pdu** %2, align 8
  %11 = getelementptr inbounds %struct.pdu, %struct.pdu* %10, i32 0, i32 3
  %12 = load %struct.connection*, %struct.connection** %11, align 8
  store %struct.connection* %12, %struct.connection** %3, align 8
  %13 = load %struct.connection*, %struct.connection** %3, align 8
  %14 = getelementptr inbounds %struct.connection, %struct.connection* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.pdu*, %struct.pdu** %2, align 8
  %21 = load %struct.pdu*, %struct.pdu** %2, align 8
  %22 = getelementptr inbounds %struct.pdu, %struct.pdu* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pdu_set_data_segment_length(%struct.pdu* %20, i32 %23)
  %25 = load %struct.pdu*, %struct.pdu** %2, align 8
  %26 = getelementptr inbounds %struct.pdu, %struct.pdu* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %8, i64 0, i64 0
  %29 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  %30 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %8, i64 0, i64 0
  %31 = getelementptr inbounds %struct.iovec, %struct.iovec* %30, i32 0, i32 0
  store i32 4, i32* %31, align 16
  %32 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %8, i64 0, i64 0
  %33 = getelementptr inbounds %struct.iovec, %struct.iovec* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 16
  store i32 %34, i32* %5, align 4
  store i32 1, i32* %9, align 4
  %35 = load %struct.pdu*, %struct.pdu** %2, align 8
  %36 = getelementptr inbounds %struct.pdu, %struct.pdu* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %76

39:                                               ; preds = %1
  %40 = load %struct.pdu*, %struct.pdu** %2, align 8
  %41 = getelementptr inbounds %struct.pdu, %struct.pdu* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %8, i64 0, i64 1
  %44 = getelementptr inbounds %struct.iovec, %struct.iovec* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  %45 = load %struct.pdu*, %struct.pdu** %2, align 8
  %46 = getelementptr inbounds %struct.pdu, %struct.pdu* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %8, i64 0, i64 1
  %49 = getelementptr inbounds %struct.iovec, %struct.iovec* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 16
  %50 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %8, i64 0, i64 1
  %51 = getelementptr inbounds %struct.iovec, %struct.iovec* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 16
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %5, align 4
  store i32 2, i32* %9, align 4
  %55 = load %struct.pdu*, %struct.pdu** %2, align 8
  %56 = call i64 @pdu_padding(%struct.pdu* %55)
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %6, align 8
  %58 = icmp ugt i64 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %39
  %60 = load i64, i64* %6, align 8
  %61 = icmp ult i64 %60, 4
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %8, i64 0, i64 2
  %65 = getelementptr inbounds %struct.iovec, %struct.iovec* %64, i32 0, i32 1
  store i32* %7, i32** %65, align 8
  %66 = load i64, i64* %6, align 8
  %67 = trunc i64 %66 to i32
  %68 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %8, i64 0, i64 2
  %69 = getelementptr inbounds %struct.iovec, %struct.iovec* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 16
  %70 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %8, i64 0, i64 2
  %71 = getelementptr inbounds %struct.iovec, %struct.iovec* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 16
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %5, align 4
  store i32 3, i32* %9, align 4
  br label %75

75:                                               ; preds = %59, %39
  br label %76

76:                                               ; preds = %75, %1
  %77 = load %struct.connection*, %struct.connection** %3, align 8
  %78 = getelementptr inbounds %struct.connection, %struct.connection* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %8, i64 0, i64 0
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @writev(i32 %79, %struct.iovec* %80, i32 %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %76
  %86 = call i64 (...) @timed_out()
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %85
  %91 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %76
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %92
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

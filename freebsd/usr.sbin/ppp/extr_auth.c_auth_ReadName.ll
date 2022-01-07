; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_auth.c_auth_ReadName.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_auth.c_auth_ReadName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.authinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.mbuf = type { i32 }

@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"auth_ReadName: Name too long (%zu) !\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"auth_ReadName: Short packet (%zu > %zu) !\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @auth_ReadName(%struct.authinfo* %0, %struct.mbuf* %1, i64 %2) #0 {
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.authinfo*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.authinfo* %0, %struct.authinfo** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp ugt i64 %9, 7
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* @LogWARN, align 4
  %13 = load i64, i64* %7, align 8
  %14 = call i32 (i32, i8*, i64, ...) @log_Printf(i32 %12, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %13)
  br label %43

15:                                               ; preds = %3
  %16 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %17 = call i64 @m_length(%struct.mbuf* %16)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load i32, i32* @LogWARN, align 4
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 (i32, i8*, i64, ...) @log_Printf(i32 %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %23, i64 %24)
  br label %42

26:                                               ; preds = %15
  %27 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %28 = load %struct.authinfo*, %struct.authinfo** %5, align 8
  %29 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = load i64, i64* %7, align 8
  %34 = call %struct.mbuf* @mbuf_Read(%struct.mbuf* %27, i32* %32, i64 %33)
  store %struct.mbuf* %34, %struct.mbuf** %6, align 8
  %35 = load %struct.authinfo*, %struct.authinfo** %5, align 8
  %36 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %41, %struct.mbuf** %4, align 8
  br label %50

42:                                               ; preds = %21
  br label %43

43:                                               ; preds = %42, %11
  %44 = load %struct.authinfo*, %struct.authinfo** %5, align 8
  %45 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  store i8 0, i8* %47, align 1
  %48 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %49 = call i32 @m_freem(%struct.mbuf* %48)
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  br label %50

50:                                               ; preds = %43, %26
  %51 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  ret %struct.mbuf* %51
}

declare dso_local i32 @log_Printf(i32, i8*, i64, ...) #1

declare dso_local i64 @m_length(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @mbuf_Read(%struct.mbuf*, i32*, i64) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

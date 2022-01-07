; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_auth.c_auth_ReadHeader.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_auth.c_auth_ReadHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.authinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.mbuf = type { i32 }

@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"auth_ReadHeader: Short packet (%u > %zu) !\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"auth_ReadHeader: Short packet header (%u > %zu) !\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @auth_ReadHeader(%struct.authinfo* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.authinfo*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i64, align 8
  store %struct.authinfo* %0, %struct.authinfo** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %7 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %8 = call i64 @m_length(%struct.mbuf* %7)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp uge i64 %9, 8
  br i1 %10, label %11, label %44

11:                                               ; preds = %2
  %12 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %13 = load %struct.authinfo*, %struct.authinfo** %4, align 8
  %14 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = bitcast %struct.TYPE_3__* %15 to i32*
  %17 = call %struct.mbuf* @mbuf_Read(%struct.mbuf* %12, i32* %16, i32 8)
  store %struct.mbuf* %17, %struct.mbuf** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.authinfo*, %struct.authinfo** %4, align 8
  %20 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @ntohs(i8* %23)
  %25 = sext i32 %24 to i64
  %26 = icmp uge i64 %18, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %11
  %28 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %28, %struct.mbuf** %3, align 8
  br label %56

29:                                               ; preds = %11
  %30 = call i8* @htons(i32 0)
  %31 = load %struct.authinfo*, %struct.authinfo** %4, align 8
  %32 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i8* %30, i8** %34, align 8
  %35 = load i32, i32* @LogWARN, align 4
  %36 = load %struct.authinfo*, %struct.authinfo** %4, align 8
  %37 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @ntohs(i8* %40)
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @log_Printf(i32 %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %41, i64 %42)
  br label %53

44:                                               ; preds = %2
  %45 = call i8* @htons(i32 0)
  %46 = load %struct.authinfo*, %struct.authinfo** %4, align 8
  %47 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i8* %45, i8** %49, align 8
  %50 = load i32, i32* @LogWARN, align 4
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @log_Printf(i32 %50, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 8, i64 %51)
  br label %53

53:                                               ; preds = %44, %29
  %54 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %55 = call i32 @m_freem(%struct.mbuf* %54)
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  br label %56

56:                                               ; preds = %53, %27
  %57 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  ret %struct.mbuf* %57
}

declare dso_local i64 @m_length(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @mbuf_Read(%struct.mbuf*, i32*, i32) #1

declare dso_local i32 @ntohs(i8*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, i64) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

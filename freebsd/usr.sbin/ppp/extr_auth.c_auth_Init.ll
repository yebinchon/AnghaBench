; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_auth.c_auth_Init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_auth.c_auth_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.authinfo = type { %struct.physical*, %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i8*, i8*, i8* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.physical = type { i32 }

@DEF_FSMRETRY = common dso_local global i32 0, align 4
@DEF_FSMAUTHTRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @auth_Init(%struct.authinfo* %0, %struct.physical* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.authinfo*, align 8
  %7 = alloca %struct.physical*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.authinfo* %0, %struct.authinfo** %6, align 8
  store %struct.physical* %1, %struct.physical** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load %struct.authinfo*, %struct.authinfo** %6, align 8
  %12 = call i32 @memset(%struct.authinfo* %11, i8 signext 0, i32 48)
  %13 = load i32, i32* @DEF_FSMRETRY, align 4
  %14 = load %struct.authinfo*, %struct.authinfo** %6, align 8
  %15 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  store i32 %13, i32* %17, align 4
  %18 = load i32, i32* @DEF_FSMAUTHTRIES, align 4
  %19 = load %struct.authinfo*, %struct.authinfo** %6, align 8
  %20 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i32 %18, i32* %22, align 8
  %23 = load %struct.authinfo*, %struct.authinfo** %6, align 8
  %24 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load %struct.authinfo*, %struct.authinfo** %6, align 8
  %29 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i8* %27, i8** %30, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load %struct.authinfo*, %struct.authinfo** %6, align 8
  %33 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i8* %31, i8** %34, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load %struct.authinfo*, %struct.authinfo** %6, align 8
  %37 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i8* %35, i8** %38, align 8
  %39 = load %struct.physical*, %struct.physical** %7, align 8
  %40 = load %struct.authinfo*, %struct.authinfo** %6, align 8
  %41 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %40, i32 0, i32 0
  store %struct.physical* %39, %struct.physical** %41, align 8
  ret void
}

declare dso_local i32 @memset(%struct.authinfo*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

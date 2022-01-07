; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_cryptodev.c_csecreate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_cryptodev.c_csecreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csession = type { i32, i32, %struct.auth_hash*, %struct.enc_xform*, i8*, i8*, i32, i8*, i8*, i32 }
%struct.fcrypt = type { i32 }
%struct.enc_xform = type { i32 }
%struct.auth_hash = type { i32 }

@M_XDATA = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"cryptodev\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"crypto session lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.csession* @csecreate(%struct.fcrypt* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5, i8* %6, i8* %7, %struct.enc_xform* %8, %struct.auth_hash* %9) #0 {
  %11 = alloca %struct.csession*, align 8
  %12 = alloca %struct.fcrypt*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.enc_xform*, align 8
  %21 = alloca %struct.auth_hash*, align 8
  %22 = alloca %struct.csession*, align 8
  store %struct.fcrypt* %0, %struct.fcrypt** %12, align 8
  store i32 %1, i32* %13, align 4
  store i8* %2, i8** %14, align 8
  store i32 %3, i32* %15, align 4
  store i8* %4, i8** %16, align 8
  store i32 %5, i32* %17, align 4
  store i8* %6, i8** %18, align 8
  store i8* %7, i8** %19, align 8
  store %struct.enc_xform* %8, %struct.enc_xform** %20, align 8
  store %struct.auth_hash* %9, %struct.auth_hash** %21, align 8
  %23 = load i32, i32* @M_XDATA, align 4
  %24 = load i32, i32* @M_NOWAIT, align 4
  %25 = load i32, i32* @M_ZERO, align 4
  %26 = or i32 %24, %25
  %27 = call %struct.csession* @malloc(i32 72, i32 %23, i32 %26)
  store %struct.csession* %27, %struct.csession** %22, align 8
  %28 = load %struct.csession*, %struct.csession** %22, align 8
  %29 = icmp eq %struct.csession* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %10
  store %struct.csession* null, %struct.csession** %11, align 8
  br label %69

31:                                               ; preds = %10
  %32 = load %struct.csession*, %struct.csession** %22, align 8
  %33 = getelementptr inbounds %struct.csession, %struct.csession* %32, i32 0, i32 9
  %34 = load i32, i32* @MTX_DEF, align 4
  %35 = call i32 @mtx_init(i32* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i8*, i8** %14, align 8
  %37 = load %struct.csession*, %struct.csession** %22, align 8
  %38 = getelementptr inbounds %struct.csession, %struct.csession* %37, i32 0, i32 8
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* %15, align 4
  %40 = sdiv i32 %39, 8
  %41 = load %struct.csession*, %struct.csession** %22, align 8
  %42 = getelementptr inbounds %struct.csession, %struct.csession* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i8*, i8** %16, align 8
  %44 = load %struct.csession*, %struct.csession** %22, align 8
  %45 = getelementptr inbounds %struct.csession, %struct.csession* %44, i32 0, i32 7
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* %17, align 4
  %47 = sdiv i32 %46, 8
  %48 = load %struct.csession*, %struct.csession** %22, align 8
  %49 = getelementptr inbounds %struct.csession, %struct.csession* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.csession*, %struct.csession** %22, align 8
  %52 = getelementptr inbounds %struct.csession, %struct.csession* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** %18, align 8
  %54 = load %struct.csession*, %struct.csession** %22, align 8
  %55 = getelementptr inbounds %struct.csession, %struct.csession* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** %19, align 8
  %57 = load %struct.csession*, %struct.csession** %22, align 8
  %58 = getelementptr inbounds %struct.csession, %struct.csession* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load %struct.enc_xform*, %struct.enc_xform** %20, align 8
  %60 = load %struct.csession*, %struct.csession** %22, align 8
  %61 = getelementptr inbounds %struct.csession, %struct.csession* %60, i32 0, i32 3
  store %struct.enc_xform* %59, %struct.enc_xform** %61, align 8
  %62 = load %struct.auth_hash*, %struct.auth_hash** %21, align 8
  %63 = load %struct.csession*, %struct.csession** %22, align 8
  %64 = getelementptr inbounds %struct.csession, %struct.csession* %63, i32 0, i32 2
  store %struct.auth_hash* %62, %struct.auth_hash** %64, align 8
  %65 = load %struct.fcrypt*, %struct.fcrypt** %12, align 8
  %66 = load %struct.csession*, %struct.csession** %22, align 8
  %67 = call i32 @cseadd(%struct.fcrypt* %65, %struct.csession* %66)
  %68 = load %struct.csession*, %struct.csession** %22, align 8
  store %struct.csession* %68, %struct.csession** %11, align 8
  br label %69

69:                                               ; preds = %31, %30
  %70 = load %struct.csession*, %struct.csession** %11, align 8
  ret %struct.csession* %70
}

declare dso_local %struct.csession* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i8*, i32) #1

declare dso_local i32 @cseadd(%struct.fcrypt*, %struct.csession*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

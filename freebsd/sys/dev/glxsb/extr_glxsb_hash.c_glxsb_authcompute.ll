; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/glxsb/extr_glxsb_hash.c_glxsb_authcompute.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/glxsb/extr_glxsb_hash.c_glxsb_authcompute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glxsb_session = type { i32, i32, i32, %struct.auth_hash* }
%struct.auth_hash = type { i32, i32 (i32*, %union.authctx*)*, i32 (%union.authctx*, i32*, i32)*, i32 }
%union.authctx = type { i32 }
%struct.cryptodesc = type { i32, i32, i32 }

@HASH_MAX_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.glxsb_session*, %struct.cryptodesc*, i32, i32)* @glxsb_authcompute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glxsb_authcompute(%struct.glxsb_session* %0, %struct.cryptodesc* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.glxsb_session*, align 8
  %7 = alloca %struct.cryptodesc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.auth_hash*, align 8
  %13 = alloca %union.authctx, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.glxsb_session* %0, %struct.glxsb_session** %6, align 8
  store %struct.cryptodesc* %1, %struct.cryptodesc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @HASH_MAX_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load %struct.glxsb_session*, %struct.glxsb_session** %6, align 8
  %21 = getelementptr inbounds %struct.glxsb_session, %struct.glxsb_session* %20, i32 0, i32 3
  %22 = load %struct.auth_hash*, %struct.auth_hash** %21, align 8
  store %struct.auth_hash* %22, %struct.auth_hash** %12, align 8
  %23 = load %struct.glxsb_session*, %struct.glxsb_session** %6, align 8
  %24 = getelementptr inbounds %struct.glxsb_session, %struct.glxsb_session* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.auth_hash*, %struct.auth_hash** %12, align 8
  %27 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @bcopy(i32 %25, %union.authctx* %13, i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %33 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %36 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.auth_hash*, %struct.auth_hash** %12, align 8
  %39 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %38, i32 0, i32 2
  %40 = load i32 (%union.authctx*, i32*, i32)*, i32 (%union.authctx*, i32*, i32)** %39, align 8
  %41 = bitcast i32 (%union.authctx*, i32*, i32)* %40 to i32 (i8*, i8*, i32)*
  %42 = ptrtoint %union.authctx* %13 to i32
  %43 = call i32 @crypto_apply(i32 %30, i32 %31, i32 %34, i32 %37, i32 (i8*, i8*, i32)* %41, i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %4
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %91

48:                                               ; preds = %4
  %49 = load %struct.auth_hash*, %struct.auth_hash** %12, align 8
  %50 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %49, i32 0, i32 1
  %51 = load i32 (i32*, %union.authctx*)*, i32 (i32*, %union.authctx*)** %50, align 8
  %52 = call i32 %51(i32* %19, %union.authctx* %13)
  %53 = load %struct.glxsb_session*, %struct.glxsb_session** %6, align 8
  %54 = getelementptr inbounds %struct.glxsb_session, %struct.glxsb_session* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.auth_hash*, %struct.auth_hash** %12, align 8
  %57 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @bcopy(i32 %55, %union.authctx* %13, i32 %58)
  %60 = load %struct.auth_hash*, %struct.auth_hash** %12, align 8
  %61 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %60, i32 0, i32 2
  %62 = load i32 (%union.authctx*, i32*, i32)*, i32 (%union.authctx*, i32*, i32)** %61, align 8
  %63 = load %struct.auth_hash*, %struct.auth_hash** %12, align 8
  %64 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 %62(%union.authctx* %13, i32* %19, i32 %65)
  %67 = load %struct.auth_hash*, %struct.auth_hash** %12, align 8
  %68 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %67, i32 0, i32 1
  %69 = load i32 (i32*, %union.authctx*)*, i32 (i32*, %union.authctx*)** %68, align 8
  %70 = call i32 %69(i32* %19, %union.authctx* %13)
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.cryptodesc*, %struct.cryptodesc** %7, align 8
  %74 = getelementptr inbounds %struct.cryptodesc, %struct.cryptodesc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.glxsb_session*, %struct.glxsb_session** %6, align 8
  %77 = getelementptr inbounds %struct.glxsb_session, %struct.glxsb_session* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %48
  %81 = load %struct.auth_hash*, %struct.auth_hash** %12, align 8
  %82 = getelementptr inbounds %struct.auth_hash, %struct.auth_hash* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  br label %88

84:                                               ; preds = %48
  %85 = load %struct.glxsb_session*, %struct.glxsb_session** %6, align 8
  %86 = getelementptr inbounds %struct.glxsb_session, %struct.glxsb_session* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  br label %88

88:                                               ; preds = %84, %80
  %89 = phi i32 [ %83, %80 ], [ %87, %84 ]
  %90 = call i32 @crypto_copyback(i32 %71, i32 %72, i32 %75, i32 %89, i32* %19)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %91

91:                                               ; preds = %88, %46
  %92 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bcopy(i32, %union.authctx*, i32) #2

declare dso_local i32 @crypto_apply(i32, i32, i32, i32, i32 (i8*, i8*, i32)*, i32) #2

declare dso_local i32 @crypto_copyback(i32, i32, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

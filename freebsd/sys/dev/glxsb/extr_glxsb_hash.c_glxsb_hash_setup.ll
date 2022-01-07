; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/glxsb/extr_glxsb_hash.c_glxsb_hash_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/glxsb/extr_glxsb_hash.c_glxsb_hash_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.glxsb_session = type { i32*, i32*, %struct.TYPE_8__*, i32 }
%struct.cryptoini = type { i32, i32, i32*, i32 }

@auth_hash_null = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@auth_hash_hmac_md5 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@auth_hash_hmac_sha1 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@auth_hash_hmac_ripemd_160 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@auth_hash_hmac_sha2_256 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@auth_hash_hmac_sha2_384 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@auth_hash_hmac_sha2_512 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@M_GLXSB = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @glxsb_hash_setup(%struct.glxsb_session* %0, %struct.cryptoini* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.glxsb_session*, align 8
  %5 = alloca %struct.cryptoini*, align 8
  store %struct.glxsb_session* %0, %struct.glxsb_session** %4, align 8
  store %struct.cryptoini* %1, %struct.cryptoini** %5, align 8
  %6 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  %7 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.glxsb_session*, %struct.glxsb_session** %4, align 8
  %10 = getelementptr inbounds %struct.glxsb_session, %struct.glxsb_session* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  %12 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %35 [
    i32 133, label %14
    i32 134, label %17
    i32 131, label %20
    i32 132, label %23
    i32 130, label %26
    i32 129, label %29
    i32 128, label %32
  ]

14:                                               ; preds = %2
  %15 = load %struct.glxsb_session*, %struct.glxsb_session** %4, align 8
  %16 = getelementptr inbounds %struct.glxsb_session, %struct.glxsb_session* %15, i32 0, i32 2
  store %struct.TYPE_8__* @auth_hash_null, %struct.TYPE_8__** %16, align 8
  br label %35

17:                                               ; preds = %2
  %18 = load %struct.glxsb_session*, %struct.glxsb_session** %4, align 8
  %19 = getelementptr inbounds %struct.glxsb_session, %struct.glxsb_session* %18, i32 0, i32 2
  store %struct.TYPE_8__* @auth_hash_hmac_md5, %struct.TYPE_8__** %19, align 8
  br label %35

20:                                               ; preds = %2
  %21 = load %struct.glxsb_session*, %struct.glxsb_session** %4, align 8
  %22 = getelementptr inbounds %struct.glxsb_session, %struct.glxsb_session* %21, i32 0, i32 2
  store %struct.TYPE_8__* @auth_hash_hmac_sha1, %struct.TYPE_8__** %22, align 8
  br label %35

23:                                               ; preds = %2
  %24 = load %struct.glxsb_session*, %struct.glxsb_session** %4, align 8
  %25 = getelementptr inbounds %struct.glxsb_session, %struct.glxsb_session* %24, i32 0, i32 2
  store %struct.TYPE_8__* @auth_hash_hmac_ripemd_160, %struct.TYPE_8__** %25, align 8
  br label %35

26:                                               ; preds = %2
  %27 = load %struct.glxsb_session*, %struct.glxsb_session** %4, align 8
  %28 = getelementptr inbounds %struct.glxsb_session, %struct.glxsb_session* %27, i32 0, i32 2
  store %struct.TYPE_8__* @auth_hash_hmac_sha2_256, %struct.TYPE_8__** %28, align 8
  br label %35

29:                                               ; preds = %2
  %30 = load %struct.glxsb_session*, %struct.glxsb_session** %4, align 8
  %31 = getelementptr inbounds %struct.glxsb_session, %struct.glxsb_session* %30, i32 0, i32 2
  store %struct.TYPE_8__* @auth_hash_hmac_sha2_384, %struct.TYPE_8__** %31, align 8
  br label %35

32:                                               ; preds = %2
  %33 = load %struct.glxsb_session*, %struct.glxsb_session** %4, align 8
  %34 = getelementptr inbounds %struct.glxsb_session, %struct.glxsb_session* %33, i32 0, i32 2
  store %struct.TYPE_8__* @auth_hash_hmac_sha2_512, %struct.TYPE_8__** %34, align 8
  br label %35

35:                                               ; preds = %2, %32, %29, %26, %23, %20, %17, %14
  %36 = load %struct.glxsb_session*, %struct.glxsb_session** %4, align 8
  %37 = getelementptr inbounds %struct.glxsb_session, %struct.glxsb_session* %36, i32 0, i32 2
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @M_GLXSB, align 4
  %42 = load i32, i32* @M_ZERO, align 4
  %43 = load i32, i32* @M_NOWAIT, align 4
  %44 = or i32 %42, %43
  %45 = call i8* @malloc(i32 %40, i32 %41, i32 %44)
  %46 = bitcast i8* %45 to i32*
  %47 = load %struct.glxsb_session*, %struct.glxsb_session** %4, align 8
  %48 = getelementptr inbounds %struct.glxsb_session, %struct.glxsb_session* %47, i32 0, i32 1
  store i32* %46, i32** %48, align 8
  %49 = load %struct.glxsb_session*, %struct.glxsb_session** %4, align 8
  %50 = getelementptr inbounds %struct.glxsb_session, %struct.glxsb_session* %49, i32 0, i32 2
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @M_GLXSB, align 4
  %55 = load i32, i32* @M_ZERO, align 4
  %56 = load i32, i32* @M_NOWAIT, align 4
  %57 = or i32 %55, %56
  %58 = call i8* @malloc(i32 %53, i32 %54, i32 %57)
  %59 = bitcast i8* %58 to i32*
  %60 = load %struct.glxsb_session*, %struct.glxsb_session** %4, align 8
  %61 = getelementptr inbounds %struct.glxsb_session, %struct.glxsb_session* %60, i32 0, i32 0
  store i32* %59, i32** %61, align 8
  %62 = load %struct.glxsb_session*, %struct.glxsb_session** %4, align 8
  %63 = getelementptr inbounds %struct.glxsb_session, %struct.glxsb_session* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %35
  %67 = load %struct.glxsb_session*, %struct.glxsb_session** %4, align 8
  %68 = getelementptr inbounds %struct.glxsb_session, %struct.glxsb_session* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %66, %35
  %72 = load i32, i32* @ENOMEM, align 4
  store i32 %72, i32* %3, align 4
  br label %88

73:                                               ; preds = %66
  %74 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  %75 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load %struct.glxsb_session*, %struct.glxsb_session** %4, align 8
  %80 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  %81 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.cryptoini*, %struct.cryptoini** %5, align 8
  %84 = getelementptr inbounds %struct.cryptoini, %struct.cryptoini* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @glxsb_hash_key_setup(%struct.glxsb_session* %79, i32* %82, i32 %85)
  br label %87

87:                                               ; preds = %78, %73
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %71
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @glxsb_hash_key_setup(%struct.glxsb_session*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_setup_mackey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_setup_mackey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubsec_session = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@HMAC_IPAD_VAL = common dso_local global i32 0, align 4
@CRYPTO_MD5_HMAC = common dso_local global i32 0, align 4
@hmac_ipad_buffer = common dso_local global i32* null, align 8
@MD5_BLOCK_LEN = common dso_local global i32 0, align 4
@SHA1_BLOCK_LEN = common dso_local global i32 0, align 4
@HMAC_OPAD_VAL = common dso_local global i32 0, align 4
@hmac_opad_buffer = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubsec_session*, i32, i32*, i32)* @ubsec_setup_mackey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubsec_setup_mackey(%struct.ubsec_session* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ubsec_session*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__, align 4
  %10 = alloca %struct.TYPE_9__, align 4
  %11 = alloca i32, align 4
  store %struct.ubsec_session* %0, %struct.ubsec_session** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %24, %4
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load i32, i32* @HMAC_IPAD_VAL, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %11, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = xor i32 %22, %17
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %11, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %11, align 4
  br label %12

27:                                               ; preds = %12
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @CRYPTO_MD5_HMAC, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = call i32 @MD5Init(%struct.TYPE_10__* %9)
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @MD5Update(%struct.TYPE_10__* %9, i32* %33, i32 %34)
  %36 = load i32*, i32** @hmac_ipad_buffer, align 8
  %37 = load i32, i32* @MD5_BLOCK_LEN, align 4
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %37, %38
  %40 = call i32 @MD5Update(%struct.TYPE_10__* %9, i32* %36, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ubsec_session*, %struct.ubsec_session** %5, align 8
  %44 = getelementptr inbounds %struct.ubsec_session, %struct.ubsec_session* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @bcopy(i32 %42, i32 %45, i32 4)
  br label %64

47:                                               ; preds = %27
  %48 = call i32 @SHA1Init(%struct.TYPE_9__* %10)
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @SHA1Update(%struct.TYPE_9__* %10, i32* %49, i32 %50)
  %52 = load i32*, i32** @hmac_ipad_buffer, align 8
  %53 = load i32, i32* @SHA1_BLOCK_LEN, align 4
  %54 = load i32, i32* %8, align 4
  %55 = sub nsw i32 %53, %54
  %56 = call i32 @SHA1Update(%struct.TYPE_9__* %10, i32* %52, i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ubsec_session*, %struct.ubsec_session** %5, align 8
  %61 = getelementptr inbounds %struct.ubsec_session, %struct.ubsec_session* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @bcopy(i32 %59, i32 %62, i32 4)
  br label %64

64:                                               ; preds = %47, %31
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %79, %64
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %65
  %70 = load i32, i32* @HMAC_IPAD_VAL, align 4
  %71 = load i32, i32* @HMAC_OPAD_VAL, align 4
  %72 = xor i32 %70, %71
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = xor i32 %77, %72
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %69
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %65

82:                                               ; preds = %65
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @CRYPTO_MD5_HMAC, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %82
  %87 = call i32 @MD5Init(%struct.TYPE_10__* %9)
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @MD5Update(%struct.TYPE_10__* %9, i32* %88, i32 %89)
  %91 = load i32*, i32** @hmac_opad_buffer, align 8
  %92 = load i32, i32* @MD5_BLOCK_LEN, align 4
  %93 = load i32, i32* %8, align 4
  %94 = sub nsw i32 %92, %93
  %95 = call i32 @MD5Update(%struct.TYPE_10__* %9, i32* %91, i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ubsec_session*, %struct.ubsec_session** %5, align 8
  %99 = getelementptr inbounds %struct.ubsec_session, %struct.ubsec_session* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @bcopy(i32 %97, i32 %100, i32 4)
  br label %119

102:                                              ; preds = %82
  %103 = call i32 @SHA1Init(%struct.TYPE_9__* %10)
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @SHA1Update(%struct.TYPE_9__* %10, i32* %104, i32 %105)
  %107 = load i32*, i32** @hmac_opad_buffer, align 8
  %108 = load i32, i32* @SHA1_BLOCK_LEN, align 4
  %109 = load i32, i32* %8, align 4
  %110 = sub nsw i32 %108, %109
  %111 = call i32 @SHA1Update(%struct.TYPE_9__* %10, i32* %107, i32 %110)
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ubsec_session*, %struct.ubsec_session** %5, align 8
  %116 = getelementptr inbounds %struct.ubsec_session, %struct.ubsec_session* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @bcopy(i32 %114, i32 %117, i32 4)
  br label %119

119:                                              ; preds = %102, %86
  store i32 0, i32* %11, align 4
  br label %120

120:                                              ; preds = %132, %119
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %135

124:                                              ; preds = %120
  %125 = load i32, i32* @HMAC_OPAD_VAL, align 4
  %126 = load i32*, i32** %7, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = xor i32 %130, %125
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %124
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %120

135:                                              ; preds = %120
  ret void
}

declare dso_local i32 @MD5Init(%struct.TYPE_10__*) #1

declare dso_local i32 @MD5Update(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @SHA1Init(%struct.TYPE_9__*) #1

declare dso_local i32 @SHA1Update(%struct.TYPE_9__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

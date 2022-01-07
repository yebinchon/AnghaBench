; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_aes_setkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/crypto/extr_t4_crypto.c_ccr_aes_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccr_session = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@CHCR_KEYCTX_CIPHER_KEY_SIZE_128 = common dso_local global i32 0, align 4
@CHCR_KEYCTX_CIPHER_KEY_SIZE_192 = common dso_local global i32 0, align 4
@CHCR_KEYCTX_CIPHER_KEY_SIZE_256 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"should not get here\00", align 1
@CHCR_KEYCTX_MAC_KEY_SIZE_128 = common dso_local global i32 0, align 4
@GMAC_BLOCK_LEN = common dso_local global i32 0, align 4
@CHCR_KEYCTX_MAC_KEY_SIZE_192 = common dso_local global i32 0, align 4
@CHCR_KEYCTX_MAC_KEY_SIZE_256 = common dso_local global i32 0, align 4
@CHCR_KEYCTX_NO_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccr_session*, i32, i8*, i32)* @ccr_aes_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccr_aes_setkey(%struct.ccr_session* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ccr_session*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ccr_session* %0, %struct.ccr_session** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 129
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = sdiv i32 %19, 2
  store i32 %20, i32* %13, align 4
  br label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %13, align 4
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i32, i32* %13, align 4
  switch i32 %24, label %31 [
    i32 128, label %25
    i32 192, label %27
    i32 256, label %29
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* @CHCR_KEYCTX_CIPHER_KEY_SIZE_128, align 4
  store i32 %26, i32* %9, align 4
  br label %33

27:                                               ; preds = %23
  %28 = load i32, i32* @CHCR_KEYCTX_CIPHER_KEY_SIZE_192, align 4
  store i32 %28, i32* %9, align 4
  br label %33

29:                                               ; preds = %23
  %30 = load i32, i32* @CHCR_KEYCTX_CIPHER_KEY_SIZE_256, align 4
  store i32 %30, i32* %9, align 4
  br label %33

31:                                               ; preds = %23
  %32 = call i32 @panic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %29, %27, %25
  %34 = load i32, i32* %8, align 4
  %35 = sdiv i32 %34, 8
  %36 = load %struct.ccr_session*, %struct.ccr_session** %5, align 8
  %37 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load %struct.ccr_session*, %struct.ccr_session** %5, align 8
  %40 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = load %struct.ccr_session*, %struct.ccr_session** %5, align 8
  %45 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @memcpy(i32 %42, i8* %43, i32 %47)
  %49 = load i32, i32* %6, align 4
  switch i32 %49, label %58 [
    i32 130, label %50
    i32 129, label %50
  ]

50:                                               ; preds = %33, %33
  %51 = load %struct.ccr_session*, %struct.ccr_session** %5, align 8
  %52 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @t4_aes_getdeckey(i32 %54, i8* %55, i32 %56)
  br label %58

58:                                               ; preds = %33, %50
  %59 = load %struct.ccr_session*, %struct.ccr_session** %5, align 8
  %60 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @roundup2(i32 %62, i32 16)
  store i32 %63, i32* %12, align 4
  %64 = load %struct.ccr_session*, %struct.ccr_session** %5, align 8
  %65 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %99 [
    i32 132, label %67
    i32 128, label %81
    i32 131, label %86
  ]

67:                                               ; preds = %58
  %68 = load %struct.ccr_session*, %struct.ccr_session** %5, align 8
  %69 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %72 = load %struct.ccr_session*, %struct.ccr_session** %5, align 8
  %73 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @roundup2(i32 %75, i32 16)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = mul i32 %77, 2
  %79 = load i32, i32* %12, align 4
  %80 = add i32 %79, %78
  store i32 %80, i32* %12, align 4
  br label %101

81:                                               ; preds = %58
  %82 = load i32, i32* @CHCR_KEYCTX_MAC_KEY_SIZE_128, align 4
  store i32 %82, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %83 = load i32, i32* @GMAC_BLOCK_LEN, align 4
  %84 = load i32, i32* %12, align 4
  %85 = add i32 %84, %83
  store i32 %85, i32* %12, align 4
  br label %101

86:                                               ; preds = %58
  %87 = load i32, i32* %13, align 4
  switch i32 %87, label %94 [
    i32 128, label %88
    i32 192, label %90
    i32 256, label %92
  ]

88:                                               ; preds = %86
  %89 = load i32, i32* @CHCR_KEYCTX_MAC_KEY_SIZE_128, align 4
  store i32 %89, i32* %14, align 4
  br label %96

90:                                               ; preds = %86
  %91 = load i32, i32* @CHCR_KEYCTX_MAC_KEY_SIZE_192, align 4
  store i32 %91, i32* %14, align 4
  br label %96

92:                                               ; preds = %86
  %93 = load i32, i32* @CHCR_KEYCTX_MAC_KEY_SIZE_256, align 4
  store i32 %93, i32* %14, align 4
  br label %96

94:                                               ; preds = %86
  %95 = call i32 @panic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %92, %90, %88
  store i32 0, i32* %15, align 4
  %97 = load i32, i32* %12, align 4
  %98 = mul i32 %97, 2
  store i32 %98, i32* %12, align 4
  br label %101

99:                                               ; preds = %58
  %100 = load i32, i32* @CHCR_KEYCTX_NO_KEY, align 4
  store i32 %100, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %101

101:                                              ; preds = %99, %96, %81, %67
  %102 = load i32, i32* %12, align 4
  %103 = zext i32 %102 to i64
  %104 = add i64 4, %103
  %105 = udiv i64 %104, 16
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @V_KEY_CONTEXT_CTX_LEN(i32 %107)
  %109 = load i32, i32* %6, align 4
  %110 = icmp eq i32 %109, 129
  %111 = zext i1 %110 to i32
  %112 = call i32 @V_KEY_CONTEXT_DUAL_CK(i32 %111)
  %113 = or i32 %108, %112
  %114 = load i32, i32* %15, align 4
  %115 = call i32 @V_KEY_CONTEXT_OPAD_PRESENT(i32 %114)
  %116 = or i32 %113, %115
  %117 = call i32 @V_KEY_CONTEXT_SALT_PRESENT(i32 1)
  %118 = or i32 %116, %117
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @V_KEY_CONTEXT_CK_SIZE(i32 %119)
  %121 = or i32 %118, %120
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @V_KEY_CONTEXT_MK_SIZE(i32 %122)
  %124 = or i32 %121, %123
  %125 = call i32 @V_KEY_CONTEXT_VALID(i32 1)
  %126 = or i32 %124, %125
  %127 = call i32 @htobe32(i32 %126)
  %128 = load %struct.ccr_session*, %struct.ccr_session** %5, align 8
  %129 = getelementptr inbounds %struct.ccr_session, %struct.ccr_session* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  store i32 %127, i32* %130, align 4
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @t4_aes_getdeckey(i32, i8*, i32) #1

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i32 @htobe32(i32) #1

declare dso_local i32 @V_KEY_CONTEXT_CTX_LEN(i32) #1

declare dso_local i32 @V_KEY_CONTEXT_DUAL_CK(i32) #1

declare dso_local i32 @V_KEY_CONTEXT_OPAD_PRESENT(i32) #1

declare dso_local i32 @V_KEY_CONTEXT_SALT_PRESENT(i32) #1

declare dso_local i32 @V_KEY_CONTEXT_CK_SIZE(i32) #1

declare dso_local i32 @V_KEY_CONTEXT_MK_SIZE(i32) #1

declare dso_local i32 @V_KEY_CONTEXT_VALID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

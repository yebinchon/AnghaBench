; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_cbc_mac.c_AES_CBC_MAC_Reinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_cbc_mac.c_AES_CBC_MAC_Reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aes_cbc_mac_ctx = type { i32, i32*, i32, i64, i64, i32*, i32, i32, i32, i32 }

@CCM_CBC_BLOCK_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"nonceLen must be between 7 and 13 bytes\00", align 1
@AES_CBC_MAC_HASH_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AES_CBC_MAC_Reinit(%struct.aes_cbc_mac_ctx* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.aes_cbc_mac_ctx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.aes_cbc_mac_ctx* %0, %struct.aes_cbc_mac_ctx** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load i32, i32* @CCM_CBC_BLOCK_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  store i32* %21, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %22 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp sge i32 %25, 7
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = icmp sle i32 %28, 13
  br label %30

30:                                               ; preds = %27, %3
  %31 = phi i1 [ false, %3 ], [ %29, %27 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @KASSERT(i32 %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %39 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %41 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %43 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %42, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %45 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %44, i32 0, i32 5
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @explicit_bzero(i32* %46, i32 8)
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 15, %48
  store i32 %49, i32* %11, align 4
  %50 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %51 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = shl i32 %54, 6
  %56 = load i32, i32* @AES_CBC_MAC_HASH_LEN, align 4
  %57 = sub nsw i32 %56, 2
  %58 = sdiv i32 %57, 2
  %59 = shl i32 %58, 3
  %60 = add nsw i32 %55, %59
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %60, %61
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %64, i32* %65, align 16
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %21, i64 1
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @bcopy(i32* %66, i32* %67, i32 %68)
  %70 = getelementptr inbounds i32, i32* %21, i64 1
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32* %73, i32** %9, align 8
  %74 = mul nuw i64 4, %19
  %75 = getelementptr inbounds i32, i32* %21, i64 %74
  %76 = getelementptr inbounds i32, i32* %75, i64 -1
  store i32* %76, i32** %13, align 8
  br label %77

77:                                               ; preds = %86, %30
  %78 = load i32*, i32** %13, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = icmp uge i32* %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %77
  %82 = load i32, i32* %12, align 4
  %83 = load i32*, i32** %13, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* %12, align 4
  %85 = ashr i32 %84, 8
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %81
  %87 = load i32*, i32** %13, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 -1
  store i32* %88, i32** %13, align 8
  br label %77

89:                                               ; preds = %77
  %90 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %91 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %90, i32 0, i32 9
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %94 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %93, i32 0, i32 8
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %97 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @rijndaelEncrypt(i32 %92, i32 %95, i32* %21, i32 %98)
  %100 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %101 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %177

104:                                              ; preds = %89
  %105 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %106 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %107, 65280
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %111 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @htobe16(i32 %112)
  store i32 %113, i32* %15, align 4
  %114 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %115 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %114, i32 0, i32 5
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @bcopy(i32* %15, i32* %116, i32 4)
  store i64 4, i64* %14, align 8
  br label %163

118:                                              ; preds = %104
  %119 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %120 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = icmp ult i64 %122, 4294967296
  br i1 %123, label %124, label %143

124:                                              ; preds = %118
  %125 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %126 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = call i32 @htobe32(i64 %128)
  store i32 %129, i32* %16, align 4
  %130 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %131 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %130, i32 0, i32 5
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  store i32 255, i32* %133, align 4
  %134 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %135 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %134, i32 0, i32 5
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  store i32 254, i32* %137, align 4
  %138 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %139 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %138, i32 0, i32 5
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 2
  %142 = call i32 @bcopy(i32* %16, i32* %141, i32 4)
  store i64 6, i64* %14, align 8
  br label %162

143:                                              ; preds = %118
  %144 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %145 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = call i32 @htobe64(i64 %147)
  store i32 %148, i32* %17, align 4
  %149 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %150 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %149, i32 0, i32 5
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  store i32 255, i32* %152, align 4
  %153 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %154 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %153, i32 0, i32 5
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  store i32 255, i32* %156, align 4
  %157 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %158 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %157, i32 0, i32 5
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 2
  %161 = call i32 @bcopy(i32* %17, i32* %160, i32 4)
  store i64 6, i64* %14, align 8
  br label %162

162:                                              ; preds = %143, %124
  br label %163

163:                                              ; preds = %162, %109
  %164 = load i64, i64* %14, align 8
  %165 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %166 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %165, i32 0, i32 4
  store i64 %164, i64* %166, align 8
  %167 = load i64, i64* %14, align 8
  %168 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %169 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = add i64 %171, %167
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %169, align 8
  %174 = load i64, i64* %14, align 8
  %175 = load %struct.aes_cbc_mac_ctx*, %struct.aes_cbc_mac_ctx** %4, align 8
  %176 = getelementptr inbounds %struct.aes_cbc_mac_ctx, %struct.aes_cbc_mac_ctx* %175, i32 0, i32 3
  store i64 %174, i64* %176, align 8
  br label %177

177:                                              ; preds = %163, %89
  %178 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %178)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i32 @explicit_bzero(i32*, i32) #2

declare dso_local i32 @bcopy(i32*, i32*, i32) #2

declare dso_local i32 @rijndaelEncrypt(i32, i32, i32*, i32) #2

declare dso_local i32 @htobe16(i32) #2

declare dso_local i32 @htobe32(i64) #2

declare dso_local i32 @htobe64(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

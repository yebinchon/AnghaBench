; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cesa/extr_cesa.c_cesa_prep_aes_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cesa/extr_cesa.c_cesa_prep_aes_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cesa_session = type { i32, i32, i64, i32 }

@RIJNDAEL_MAXNR = common dso_local global i32 0, align 4
@CESA_CSH_AES_KLEN_MASK = common dso_local global i32 0, align 4
@CESA_CSH_AES_KLEN_128 = common dso_local global i32 0, align 4
@CESA_CSH_AES_KLEN_192 = common dso_local global i32 0, align 4
@CESA_CSH_AES_KLEN_256 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cesa_session*)* @cesa_prep_aes_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cesa_prep_aes_key(%struct.cesa_session* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cesa_session*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cesa_session* %0, %struct.cesa_session** %3, align 8
  %9 = load i32, i32* @RIJNDAEL_MAXNR, align 4
  %10 = add nsw i32 %9, 1
  %11 = mul nsw i32 4, %10
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = load %struct.cesa_session*, %struct.cesa_session** %3, align 8
  %16 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.cesa_session*, %struct.cesa_session** %3, align 8
  %19 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = mul nsw i32 %20, 8
  %22 = call i32 @rijndaelKeySetupEnc(i32* %14, i32 %17, i32 %21)
  %23 = load i32, i32* @CESA_CSH_AES_KLEN_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.cesa_session*, %struct.cesa_session** %3, align 8
  %26 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.cesa_session*, %struct.cesa_session** %3, align 8
  %30 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %6, align 8
  %33 = load %struct.cesa_session*, %struct.cesa_session** %3, align 8
  %34 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %139 [
    i32 16, label %36
    i32 24, label %59
    i32 32, label %99
  ]

36:                                               ; preds = %1
  %37 = load i32, i32* @CESA_CSH_AES_KLEN_128, align 4
  %38 = load %struct.cesa_session*, %struct.cesa_session** %3, align 8
  %39 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %55, %36
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 4
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 40, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %14, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @htobe32(i32 %50)
  %52 = ptrtoint i8* %51 to i32
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %6, align 8
  store i32 %52, i32* %53, align 4
  br label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %42

58:                                               ; preds = %42
  br label %141

59:                                               ; preds = %1
  %60 = load i32, i32* @CESA_CSH_AES_KLEN_192, align 4
  %61 = load %struct.cesa_session*, %struct.cesa_session** %3, align 8
  %62 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %78, %59
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 4
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 48, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %14, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @htobe32(i32 %73)
  %75 = ptrtoint i8* %74 to i32
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %6, align 8
  store i32 %75, i32* %76, align 4
  br label %78

78:                                               ; preds = %68
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %65

81:                                               ; preds = %65
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %95, %81
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 2
  br i1 %84, label %85, label %98

85:                                               ; preds = %82
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 46, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %14, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @htobe32(i32 %90)
  %92 = ptrtoint i8* %91 to i32
  %93 = load i32*, i32** %6, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %6, align 8
  store i32 %92, i32* %93, align 4
  br label %95

95:                                               ; preds = %85
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %82

98:                                               ; preds = %82
  br label %141

99:                                               ; preds = %1
  %100 = load i32, i32* @CESA_CSH_AES_KLEN_256, align 4
  %101 = load %struct.cesa_session*, %struct.cesa_session** %3, align 8
  %102 = getelementptr inbounds %struct.cesa_session, %struct.cesa_session* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  store i32 0, i32* %7, align 4
  br label %105

105:                                              ; preds = %118, %99
  %106 = load i32, i32* %7, align 4
  %107 = icmp slt i32 %106, 4
  br i1 %107, label %108, label %121

108:                                              ; preds = %105
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 56, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %14, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @htobe32(i32 %113)
  %115 = ptrtoint i8* %114 to i32
  %116 = load i32*, i32** %6, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %6, align 8
  store i32 %115, i32* %116, align 4
  br label %118

118:                                              ; preds = %108
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %105

121:                                              ; preds = %105
  store i32 0, i32* %7, align 4
  br label %122

122:                                              ; preds = %135, %121
  %123 = load i32, i32* %7, align 4
  %124 = icmp slt i32 %123, 4
  br i1 %124, label %125, label %138

125:                                              ; preds = %122
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 52, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %14, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @htobe32(i32 %130)
  %132 = ptrtoint i8* %131 to i32
  %133 = load i32*, i32** %6, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %6, align 8
  store i32 %132, i32* %133, align 4
  br label %135

135:                                              ; preds = %125
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %7, align 4
  br label %122

138:                                              ; preds = %122
  br label %141

139:                                              ; preds = %1
  %140 = load i32, i32* @EINVAL, align 4
  store i32 %140, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %142

141:                                              ; preds = %138, %98, %58
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %142

142:                                              ; preds = %141, %139
  %143 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %143)
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rijndaelKeySetupEnc(i32*, i32, i32) #2

declare dso_local i8* @htobe32(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

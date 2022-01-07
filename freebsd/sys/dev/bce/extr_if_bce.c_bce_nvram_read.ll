; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_nvram_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_nvram_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bce_softc = type { i32 }

@BCE_VERBOSE_NVRAM = common dso_local global i32 0, align 4
@BCE_NVM_COMMAND_FIRST = common dso_local global i32 0, align 4
@BCE_NVM_COMMAND_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bce_softc*, i32, i32*, i32)* @bce_nvram_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bce_nvram_read(%struct.bce_softc* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bce_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca [4 x i32], align 16
  %18 = alloca [4 x i32], align 16
  store %struct.bce_softc* %0, %struct.bce_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* @BCE_VERBOSE_NVRAM, align 4
  %20 = call i32 @DBENTER(i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %178

24:                                               ; preds = %4
  %25 = load %struct.bce_softc*, %struct.bce_softc** %6, align 8
  %26 = call i32 @bce_acquire_nvram_lock(%struct.bce_softc* %25)
  store i32 %26, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %178

29:                                               ; preds = %24
  %30 = load %struct.bce_softc*, %struct.bce_softc** %6, align 8
  %31 = call i32 @bce_enable_nvram_access(%struct.bce_softc* %30)
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %11, align 4
  %34 = load i32, i32* %12, align 4
  %35 = and i32 %34, 3
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %81

37:                                               ; preds = %29
  %38 = load i32, i32* %12, align 4
  %39 = and i32 %38, -4
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, 3
  %42 = sub nsw i32 4, %41
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %37
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* @BCE_NVM_COMMAND_FIRST, align 4
  %49 = load i32, i32* @BCE_NVM_COMMAND_LAST, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %11, align 4
  br label %53

51:                                               ; preds = %37
  %52 = load i32, i32* @BCE_NVM_COMMAND_FIRST, align 4
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %51, %46
  %54 = load %struct.bce_softc*, %struct.bce_softc** %6, align 8
  %55 = load i32, i32* %12, align 4
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @bce_nvram_read_dword(%struct.bce_softc* %54, i32 %55, i32* %56, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %5, align 4
  br label %182

63:                                               ; preds = %53
  %64 = load i32*, i32** %8, align 8
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, 3
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %16, align 4
  %71 = call i32 @memcpy(i32* %64, i32* %69, i32 %70)
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 4
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %16, align 4
  %75 = load i32*, i32** %8, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32* %77, i32** %8, align 8
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %13, align 4
  %80 = sub nsw i32 %79, %78
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %63, %29
  %82 = load i32, i32* %13, align 4
  %83 = and i32 %82, 3
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = load i32, i32* %13, align 4
  %87 = and i32 %86, 3
  %88 = sub nsw i32 4, %87
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 4
  %91 = and i32 %90, -4
  store i32 %91, i32* %13, align 4
  br label %92

92:                                               ; preds = %85, %81
  %93 = load i32, i32* %13, align 4
  %94 = icmp eq i32 %93, 4
  br i1 %94, label %95, label %115

95:                                               ; preds = %92
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i32, i32* @BCE_NVM_COMMAND_LAST, align 4
  store i32 %99, i32* %11, align 4
  br label %104

100:                                              ; preds = %95
  %101 = load i32, i32* @BCE_NVM_COMMAND_FIRST, align 4
  %102 = load i32, i32* @BCE_NVM_COMMAND_LAST, align 4
  %103 = or i32 %101, %102
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %100, %98
  %105 = load %struct.bce_softc*, %struct.bce_softc** %6, align 8
  %106 = load i32, i32* %12, align 4
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @bce_nvram_read_dword(%struct.bce_softc* %105, i32 %106, i32* %107, i32 %108)
  store i32 %109, i32* %10, align 4
  %110 = load i32*, i32** %8, align 8
  %111 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %112 = load i32, i32* %14, align 4
  %113 = sub nsw i32 4, %112
  %114 = call i32 @memcpy(i32* %110, i32* %111, i32 %113)
  br label %172

115:                                              ; preds = %92
  %116 = load i32, i32* %13, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %171

118:                                              ; preds = %115
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 0, i32* %11, align 4
  br label %124

122:                                              ; preds = %118
  %123 = load i32, i32* @BCE_NVM_COMMAND_FIRST, align 4
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %122, %121
  %125 = load %struct.bce_softc*, %struct.bce_softc** %6, align 8
  %126 = load i32, i32* %12, align 4
  %127 = load i32*, i32** %8, align 8
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @bce_nvram_read_dword(%struct.bce_softc* %125, i32 %126, i32* %127, i32 %128)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, 4
  store i32 %131, i32* %12, align 4
  %132 = load i32*, i32** %8, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 4
  store i32* %133, i32** %8, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sub nsw i32 %134, 4
  store i32 %135, i32* %13, align 4
  br label %136

136:                                              ; preds = %144, %124
  %137 = load i32, i32* %13, align 4
  %138 = icmp sgt i32 %137, 4
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32, i32* %10, align 4
  %141 = icmp eq i32 %140, 0
  br label %142

142:                                              ; preds = %139, %136
  %143 = phi i1 [ false, %136 ], [ %141, %139 ]
  br i1 %143, label %144, label %155

144:                                              ; preds = %142
  %145 = load %struct.bce_softc*, %struct.bce_softc** %6, align 8
  %146 = load i32, i32* %12, align 4
  %147 = load i32*, i32** %8, align 8
  %148 = call i32 @bce_nvram_read_dword(%struct.bce_softc* %145, i32 %146, i32* %147, i32 0)
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %12, align 4
  %150 = add nsw i32 %149, 4
  store i32 %150, i32* %12, align 4
  %151 = load i32*, i32** %8, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 4
  store i32* %152, i32** %8, align 8
  %153 = load i32, i32* %13, align 4
  %154 = sub nsw i32 %153, 4
  store i32 %154, i32* %13, align 4
  br label %136

155:                                              ; preds = %142
  %156 = load i32, i32* %10, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  br label %173

159:                                              ; preds = %155
  %160 = load i32, i32* @BCE_NVM_COMMAND_LAST, align 4
  store i32 %160, i32* %11, align 4
  %161 = load %struct.bce_softc*, %struct.bce_softc** %6, align 8
  %162 = load i32, i32* %12, align 4
  %163 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @bce_nvram_read_dword(%struct.bce_softc* %161, i32 %162, i32* %163, i32 %164)
  store i32 %165, i32* %10, align 4
  %166 = load i32*, i32** %8, align 8
  %167 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %168 = load i32, i32* %14, align 4
  %169 = sub nsw i32 4, %168
  %170 = call i32 @memcpy(i32* %166, i32* %167, i32 %169)
  br label %171

171:                                              ; preds = %159, %115
  br label %172

172:                                              ; preds = %171, %104
  br label %173

173:                                              ; preds = %172, %158
  %174 = load %struct.bce_softc*, %struct.bce_softc** %6, align 8
  %175 = call i32 @bce_disable_nvram_access(%struct.bce_softc* %174)
  %176 = load %struct.bce_softc*, %struct.bce_softc** %6, align 8
  %177 = call i32 @bce_release_nvram_lock(%struct.bce_softc* %176)
  br label %178

178:                                              ; preds = %173, %28, %23
  %179 = load i32, i32* @BCE_VERBOSE_NVRAM, align 4
  %180 = call i32 @DBEXIT(i32 %179)
  %181 = load i32, i32* %10, align 4
  store i32 %181, i32* %5, align 4
  br label %182

182:                                              ; preds = %178, %61
  %183 = load i32, i32* %5, align 4
  ret i32 %183
}

declare dso_local i32 @DBENTER(i32) #1

declare dso_local i32 @bce_acquire_nvram_lock(%struct.bce_softc*) #1

declare dso_local i32 @bce_enable_nvram_access(%struct.bce_softc*) #1

declare dso_local i32 @bce_nvram_read_dword(%struct.bce_softc*, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @bce_disable_nvram_access(%struct.bce_softc*) #1

declare dso_local i32 @bce_release_nvram_lock(%struct.bce_softc*) #1

declare dso_local i32 @DBEXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

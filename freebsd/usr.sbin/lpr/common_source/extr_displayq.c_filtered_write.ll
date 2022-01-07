; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_displayq.c_filtered_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_displayq.c_filtered_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@filtered_write.lastchar = internal global i8 0, align 1
@filtered_write.savedchar = internal global i8 0, align 1
@BUFSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32*)* @filtered_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filtered_write(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %16 = load i32, i32* @BUFSIZ, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %13, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %14, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %48

22:                                               ; preds = %3
  %23 = load i8, i8* @filtered_write.savedchar, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load i8, i8* @filtered_write.savedchar, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 13
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i8 10, i8* @filtered_write.savedchar, align 1
  br label %31

31:                                               ; preds = %30, %26
  %32 = load i8, i8* @filtered_write.savedchar, align 1
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @fputc(i8 signext %32, i32* %33)
  %35 = load i8, i8* @filtered_write.savedchar, align 1
  store i8 %35, i8* @filtered_write.lastchar, align 1
  store i8 0, i8* @filtered_write.savedchar, align 1
  br label %36

36:                                               ; preds = %31, %22
  %37 = load i8, i8* @filtered_write.lastchar, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i8, i8* @filtered_write.lastchar, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 10
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @fputc(i8 signext 10, i32* %45)
  br label %47

47:                                               ; preds = %44, %40, %36
  store i8 0, i8* @filtered_write.lastchar, align 1
  store i32 1, i32* %15, align 4
  br label %171

48:                                               ; preds = %3
  %49 = getelementptr inbounds i8, i8* %19, i64 0
  store i8* %49, i8** %9, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 %17
  store i8* %51, i8** %8, align 8
  %52 = load i8*, i8** %4, align 8
  store i8* %52, i8** %7, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  store i8* %56, i8** %11, align 8
  store i8 0, i8* @filtered_write.lastchar, align 1
  %57 = load i8, i8* @filtered_write.savedchar, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  store i8* @filtered_write.savedchar, i8** %7, align 8
  %61 = load i8*, i8** %4, align 8
  store i8* %61, i8** %10, align 8
  br label %65

62:                                               ; preds = %48
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  store i8* %64, i8** %10, align 8
  br label %65

65:                                               ; preds = %62, %60
  br label %66

66:                                               ; preds = %151, %65
  %67 = load i8*, i8** %7, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = icmp ult i8* %67, %68
  br i1 %69, label %70, label %152

70:                                               ; preds = %66
  %71 = load i8*, i8** %10, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = icmp ult i8* %71, %72
  br i1 %73, label %74, label %100

74:                                               ; preds = %70
  %75 = load i8*, i8** %7, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 13
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i8*, i8** %10, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 10
  br i1 %83, label %94, label %84

84:                                               ; preds = %79, %74
  %85 = load i8*, i8** %7, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 10
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load i8*, i8** %10, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 13
  br i1 %93, label %94, label %99

94:                                               ; preds = %89, %79
  %95 = load i8*, i8** %9, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %9, align 8
  store i8 10, i8* %95, align 1
  %97 = load i8*, i8** %10, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %10, align 8
  br label %128

99:                                               ; preds = %89, %84
  br label %114

100:                                              ; preds = %70
  store i8 0, i8* @filtered_write.savedchar, align 1
  %101 = load i8*, i8** %7, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 13
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = load i8*, i8** %7, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 10
  br i1 %109, label %110, label %113

110:                                              ; preds = %105, %100
  %111 = load i8*, i8** %7, align 8
  %112 = load i8, i8* %111, align 1
  store i8 %112, i8* @filtered_write.savedchar, align 1
  br label %152

113:                                              ; preds = %105
  br label %114

114:                                              ; preds = %113, %99
  %115 = load i8*, i8** %7, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 13
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i8*, i8** %9, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %9, align 8
  store i8 10, i8* %120, align 1
  br label %127

122:                                              ; preds = %114
  %123 = load i8*, i8** %7, align 8
  %124 = load i8, i8* %123, align 1
  %125 = load i8*, i8** %9, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %9, align 8
  store i8 %124, i8* %125, align 1
  br label %127

127:                                              ; preds = %122, %119
  br label %128

128:                                              ; preds = %127, %94
  %129 = load i8*, i8** %10, align 8
  store i8* %129, i8** %7, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  store i8* %131, i8** %10, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = icmp uge i8* %132, %133
  br i1 %134, label %135, label %151

135:                                              ; preds = %128
  %136 = load i8*, i8** %9, align 8
  %137 = getelementptr inbounds i8, i8* %19, i64 0
  %138 = ptrtoint i8* %136 to i64
  %139 = ptrtoint i8* %137 to i64
  %140 = sub i64 %138, %139
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = load i32*, i32** %6, align 8
  %144 = call i32 @fwrite(i8* %19, i32 1, i32 %142, i32* %143)
  %145 = load i32, i32* %12, align 4
  %146 = sub nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %19, i64 %147
  %149 = load i8, i8* %148, align 1
  store i8 %149, i8* @filtered_write.lastchar, align 1
  %150 = getelementptr inbounds i8, i8* %19, i64 0
  store i8* %150, i8** %9, align 8
  br label %151

151:                                              ; preds = %135, %128
  br label %66

152:                                              ; preds = %110, %66
  %153 = load i8*, i8** %9, align 8
  %154 = getelementptr inbounds i8, i8* %19, i64 0
  %155 = ptrtoint i8* %153 to i64
  %156 = ptrtoint i8* %154 to i64
  %157 = sub i64 %155, %156
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %12, align 4
  %159 = load i32, i32* %12, align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %152
  %162 = load i32, i32* %12, align 4
  %163 = load i32*, i32** %6, align 8
  %164 = call i32 @fwrite(i8* %19, i32 1, i32 %162, i32* %163)
  %165 = load i32, i32* %12, align 4
  %166 = sub nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %19, i64 %167
  %169 = load i8, i8* %168, align 1
  store i8 %169, i8* @filtered_write.lastchar, align 1
  br label %170

170:                                              ; preds = %161, %152
  store i32 0, i32* %15, align 4
  br label %171

171:                                              ; preds = %170, %47
  %172 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %172)
  %173 = load i32, i32* %15, align 4
  switch i32 %173, label %175 [
    i32 0, label %174
    i32 1, label %174
  ]

174:                                              ; preds = %171, %171
  ret void

175:                                              ; preds = %171
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fputc(i8 signext, i32*) #2

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

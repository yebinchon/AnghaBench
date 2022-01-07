; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_ip6_sprintf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_ip6_sprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }

@digits = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ip6_sprintf(i8* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %16 = bitcast %struct.in6_addr* %15 to i64*
  store i64* %16, i64** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load i8*, i8** %3, align 8
  store i8* %17, i8** %10, align 8
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %45, %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 8
  br i1 %20, label %21, label %48

21:                                               ; preds = %18
  %22 = load i64*, i64** %11, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %33, %28
  br label %44

36:                                               ; preds = %21
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %40, %36
  br label %44

44:                                               ; preds = %43, %35
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %18

48:                                               ; preds = %18
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %52, %48
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %185, %55
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 8
  br i1 %58, label %59, label %188

59:                                               ; preds = %56
  %60 = load i32, i32* %13, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %77

62:                                               ; preds = %59
  %63 = load i64*, i64** %11, align 8
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load i32, i32* %5, align 4
  %68 = icmp eq i32 %67, 7
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i8*, i8** %10, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %10, align 8
  store i8 58, i8* %70, align 1
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i64*, i64** %11, align 8
  %74 = getelementptr inbounds i64, i64* %73, i32 1
  store i64* %74, i64** %11, align 8
  br label %185

75:                                               ; preds = %62
  store i32 2, i32* %13, align 4
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76, %59
  %78 = load i64*, i64** %11, align 8
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %110

81:                                               ; preds = %77
  %82 = load i32, i32* %13, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %81
  %85 = load i64*, i64** %11, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %84
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %89
  %94 = load i32, i32* %5, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i8*, i8** %10, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %10, align 8
  store i8 58, i8* %97, align 1
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i8*, i8** %10, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %10, align 8
  store i8 58, i8* %100, align 1
  store i32 1, i32* %13, align 4
  br label %107

102:                                              ; preds = %89, %84, %81
  %103 = load i8*, i8** %10, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %10, align 8
  store i8 48, i8* %103, align 1
  %105 = load i8*, i8** %10, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %10, align 8
  store i8 58, i8* %105, align 1
  br label %107

107:                                              ; preds = %102, %99
  %108 = load i64*, i64** %11, align 8
  %109 = getelementptr inbounds i64, i64* %108, i32 1
  store i64* %109, i64** %11, align 8
  br label %185

110:                                              ; preds = %77
  %111 = load i64*, i64** %11, align 8
  %112 = bitcast i64* %111 to i32*
  store i32* %112, i32** %12, align 8
  store i32 1, i32* %14, align 4
  %113 = load i8**, i8*** @digits, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = load i32, i32* %114, align 4
  %116 = ashr i32 %115, 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %113, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = ptrtoint i8* %119 to i8
  %121 = load i8*, i8** %10, align 8
  store i8 %120, i8* %121, align 1
  %122 = load i8*, i8** %10, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp ne i32 %124, 48
  br i1 %125, label %126, label %129

126:                                              ; preds = %110
  store i32 0, i32* %14, align 4
  %127 = load i8*, i8** %10, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %10, align 8
  br label %129

129:                                              ; preds = %126, %110
  %130 = load i8**, i8*** @digits, align 8
  %131 = load i32*, i32** %12, align 8
  %132 = getelementptr inbounds i32, i32* %131, i32 1
  store i32* %132, i32** %12, align 8
  %133 = load i32, i32* %131, align 4
  %134 = and i32 %133, 15
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %130, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = ptrtoint i8* %137 to i8
  %139 = load i8*, i8** %10, align 8
  store i8 %138, i8* %139, align 1
  %140 = load i32, i32* %14, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %129
  %143 = load i8*, i8** %10, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp ne i32 %145, 48
  br i1 %146, label %147, label %150

147:                                              ; preds = %142, %129
  store i32 0, i32* %14, align 4
  %148 = load i8*, i8** %10, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %10, align 8
  br label %150

150:                                              ; preds = %147, %142
  %151 = load i8**, i8*** @digits, align 8
  %152 = load i32*, i32** %12, align 8
  %153 = load i32, i32* %152, align 4
  %154 = ashr i32 %153, 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %151, i64 %155
  %157 = load i8*, i8** %156, align 8
  %158 = ptrtoint i8* %157 to i8
  %159 = load i8*, i8** %10, align 8
  store i8 %158, i8* %159, align 1
  %160 = load i32, i32* %14, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %150
  %163 = load i8*, i8** %10, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %165, 48
  br i1 %166, label %167, label %170

167:                                              ; preds = %162, %150
  store i32 0, i32* %14, align 4
  %168 = load i8*, i8** %10, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %10, align 8
  br label %170

170:                                              ; preds = %167, %162
  %171 = load i8**, i8*** @digits, align 8
  %172 = load i32*, i32** %12, align 8
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %173, 15
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %171, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = ptrtoint i8* %177 to i8
  %179 = load i8*, i8** %10, align 8
  %180 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %180, i8** %10, align 8
  store i8 %178, i8* %179, align 1
  %181 = load i8*, i8** %10, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %10, align 8
  store i8 58, i8* %181, align 1
  %183 = load i64*, i64** %11, align 8
  %184 = getelementptr inbounds i64, i64* %183, i32 1
  store i64* %184, i64** %11, align 8
  br label %185

185:                                              ; preds = %170, %107, %72
  %186 = load i32, i32* %5, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %5, align 4
  br label %56

188:                                              ; preds = %56
  %189 = load i8*, i8** %10, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 -1
  store i8* %190, i8** %10, align 8
  store i8 0, i8* %190, align 1
  %191 = load i8*, i8** %3, align 8
  ret i8* %191
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

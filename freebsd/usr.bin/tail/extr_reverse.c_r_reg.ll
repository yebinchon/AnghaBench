; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tail/extr_reverse.c_r_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tail/extr_reverse.c_r_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }
%struct.mapinfo = type { i8*, i64, i64, i64, i32 }

@RBYTES = common dso_local global i32 0, align 4
@RLINES = common dso_local global i32 0, align 4
@REVERSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32, i64, %struct.stat*)* @r_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r_reg(i32* %0, i8* %1, i32 %2, i64 %3, %struct.stat* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.stat*, align 8
  %11 = alloca %struct.mapinfo, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store %struct.stat* %4, %struct.stat** %10, align 8
  %16 = load %struct.stat*, %struct.stat** %10, align 8
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %13, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  br label %154

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %11, i32 0, i32 0
  store i8* null, i8** %22, align 8
  %23 = load i64, i64* %13, align 8
  %24 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %11, i32 0, i32 2
  store i64 %23, i64* %24, align 8
  %25 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %11, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @fileno(i32* %26)
  %28 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %11, i32 0, i32 4
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %11, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load i64, i64* %13, align 8
  %31 = sub nsw i64 %30, 2
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %13, align 8
  store i64 %32, i64* %14, align 8
  br label %33

33:                                               ; preds = %129, %97, %21
  %34 = load i64, i64* %12, align 8
  %35 = icmp sge i64 %34, 0
  br i1 %35, label %36, label %130

36:                                               ; preds = %33
  %37 = load i64, i64* %12, align 8
  %38 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %11, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %36
  %42 = load i64, i64* %12, align 8
  %43 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %11, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %11, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %44, %46
  %48 = icmp sge i64 %42, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %41, %36
  %50 = load i64, i64* %12, align 8
  %51 = call i64 @maparound(%struct.mapinfo* %11, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @ierr(i8* %54)
  br label %154

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %41
  %58 = load i64, i64* %12, align 8
  %59 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %11, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %58, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %15, align 4
  br label %63

63:                                               ; preds = %86, %57
  %64 = load i32, i32* %15, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @RBYTES, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i64, i64* %9, align 8
  %72 = add nsw i64 %71, -1
  store i64 %72, i64* %9, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %89

75:                                               ; preds = %70, %66
  %76 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %11, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 10
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %89

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %15, align 4
  br label %63

89:                                               ; preds = %84, %74, %63
  %90 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %11, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %91, %93
  store i64 %94, i64* %12, align 8
  %95 = load i32, i32* %15, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %33

98:                                               ; preds = %89
  %99 = load i64, i64* %12, align 8
  %100 = add nsw i64 %99, 1
  %101 = load i64, i64* %14, align 8
  %102 = load i64, i64* %12, align 8
  %103 = sub nsw i64 %101, %102
  %104 = sub nsw i64 %103, 1
  %105 = call i64 @mapprint(%struct.mapinfo* %11, i64 %100, i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %98
  %108 = load i8*, i8** %7, align 8
  %109 = call i32 @ierr(i8* %108)
  br label %154

110:                                              ; preds = %98
  %111 = load i64, i64* %12, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %14, align 8
  %113 = load i64, i64* %12, align 8
  %114 = add nsw i64 %113, -1
  store i64 %114, i64* %12, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @RLINES, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %110
  %119 = load i64, i64* %9, align 8
  %120 = add nsw i64 %119, -1
  store i64 %120, i64* %9, align 8
  br label %121

121:                                              ; preds = %118, %110
  %122 = load i64, i64* %9, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @REVERSE, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  store i64 0, i64* %12, align 8
  br label %130

129:                                              ; preds = %124, %121
  br label %33

130:                                              ; preds = %128, %33
  %131 = load i64, i64* %12, align 8
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %130
  %134 = load i64, i64* %14, align 8
  %135 = call i64 @mapprint(%struct.mapinfo* %11, i64 0, i64 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i8*, i8** %7, align 8
  %139 = call i32 @ierr(i8* %138)
  br label %154

140:                                              ; preds = %133, %130
  %141 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %11, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %154

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %11, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %11, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = call i64 @munmap(i8* %146, i64 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %144
  %152 = load i8*, i8** %7, align 8
  %153 = call i32 @ierr(i8* %152)
  br label %154

154:                                              ; preds = %20, %53, %107, %137, %151, %144, %140
  ret void
}

declare dso_local i32 @fileno(i32*) #1

declare dso_local i64 @maparound(%struct.mapinfo*, i64) #1

declare dso_local i32 @ierr(i8*) #1

declare dso_local i64 @mapprint(%struct.mapinfo*, i64, i64) #1

declare dso_local i64 @munmap(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

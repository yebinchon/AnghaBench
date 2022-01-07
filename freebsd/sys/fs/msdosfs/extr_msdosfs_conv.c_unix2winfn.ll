; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_conv.c_unix2winfn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_conv.c_unix2winfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winentry = type { i32, i32, i32*, i32*, i32*, i64, i64, i32 }
%struct.msdosfsmount = type { i32, i32 }

@WIN_CHARS = common dso_local global i32 0, align 4
@ATTR_WIN95 = common dso_local global i32 0, align 4
@WIN_LAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unix2winfn(i32* %0, i64 %1, %struct.winentry* %2, i32 %3, i32 %4, %struct.msdosfsmount* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.winentry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.msdosfsmount*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.winentry* %2, %struct.winentry** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.msdosfsmount* %5, %struct.msdosfsmount** %12, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i64 @winLenFixup(i32* %17, i64 %18)
  store i64 %19, i64* %8, align 8
  %20 = bitcast i32** %7 to i8**
  %21 = load i64, i64* %8, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* @WIN_CHARS, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load %struct.msdosfsmount*, %struct.msdosfsmount** %12, align 8
  %27 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.msdosfsmount*, %struct.msdosfsmount** %12, align 8
  %30 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @mbsadjpos(i8** %20, i64 %21, i32 %25, i32 2, i32 %28, i32 %31)
  store i64 %32, i64* %8, align 8
  %33 = load %struct.winentry*, %struct.winentry** %9, align 8
  %34 = call i32 @memset(%struct.winentry* %33, i32 255, i32 56)
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.winentry*, %struct.winentry** %9, align 8
  %37 = getelementptr inbounds %struct.winentry, %struct.winentry* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @ATTR_WIN95, align 4
  %39 = load %struct.winentry*, %struct.winentry** %9, align 8
  %40 = getelementptr inbounds %struct.winentry, %struct.winentry* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 8
  %41 = load %struct.winentry*, %struct.winentry** %9, align 8
  %42 = getelementptr inbounds %struct.winentry, %struct.winentry* %41, i32 0, i32 6
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.winentry*, %struct.winentry** %9, align 8
  %45 = getelementptr inbounds %struct.winentry, %struct.winentry* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.winentry*, %struct.winentry** %9, align 8
  %47 = getelementptr inbounds %struct.winentry, %struct.winentry* %46, i32 0, i32 5
  store i64 0, i64* %47, align 8
  store i32 0, i32* %15, align 4
  %48 = load %struct.winentry*, %struct.winentry** %9, align 8
  %49 = getelementptr inbounds %struct.winentry, %struct.winentry* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %13, align 8
  store i32 4, i32* %14, align 4
  br label %51

51:                                               ; preds = %75, %6
  %52 = load i32, i32* %14, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %14, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* %15, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %55, %51
  %60 = phi i1 [ false, %51 ], [ %58, %55 ]
  br i1 %60, label %61, label %76

61:                                               ; preds = %59
  %62 = load %struct.msdosfsmount*, %struct.msdosfsmount** %12, align 8
  %63 = call i32 @unix2winchr(i32** %7, i64* %8, i32 0, %struct.msdosfsmount* %62)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load i32*, i32** %13, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %13, align 8
  store i32 %64, i32* %65, align 4
  %67 = load i32, i32* %16, align 4
  %68 = ashr i32 %67, 8
  %69 = load i32*, i32** %13, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %13, align 8
  store i32 %68, i32* %69, align 4
  %71 = load i32, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %61
  %74 = load i32, i32* @WIN_LAST, align 4
  store i32 %74, i32* %15, align 4
  br label %75

75:                                               ; preds = %73, %61
  br label %51

76:                                               ; preds = %59
  %77 = load %struct.winentry*, %struct.winentry** %9, align 8
  %78 = getelementptr inbounds %struct.winentry, %struct.winentry* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  store i32* %79, i32** %13, align 8
  store i32 4, i32* %14, align 4
  br label %80

80:                                               ; preds = %104, %76
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %14, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  br label %88

88:                                               ; preds = %84, %80
  %89 = phi i1 [ false, %80 ], [ %87, %84 ]
  br i1 %89, label %90, label %105

90:                                               ; preds = %88
  %91 = load %struct.msdosfsmount*, %struct.msdosfsmount** %12, align 8
  %92 = call i32 @unix2winchr(i32** %7, i64* %8, i32 0, %struct.msdosfsmount* %91)
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = load i32*, i32** %13, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %13, align 8
  store i32 %93, i32* %94, align 4
  %96 = load i32, i32* %16, align 4
  %97 = ashr i32 %96, 8
  %98 = load i32*, i32** %13, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %13, align 8
  store i32 %97, i32* %98, align 4
  %100 = load i32, i32* %16, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %90
  %103 = load i32, i32* @WIN_LAST, align 4
  store i32 %103, i32* %15, align 4
  br label %104

104:                                              ; preds = %102, %90
  br label %80

105:                                              ; preds = %88
  %106 = load %struct.winentry*, %struct.winentry** %9, align 8
  %107 = getelementptr inbounds %struct.winentry, %struct.winentry* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  store i32* %108, i32** %13, align 8
  store i32 4, i32* %14, align 4
  br label %109

109:                                              ; preds = %133, %105
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %14, align 4
  %112 = icmp sge i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = load i32, i32* %15, align 4
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  br label %117

117:                                              ; preds = %113, %109
  %118 = phi i1 [ false, %109 ], [ %116, %113 ]
  br i1 %118, label %119, label %134

119:                                              ; preds = %117
  %120 = load %struct.msdosfsmount*, %struct.msdosfsmount** %12, align 8
  %121 = call i32 @unix2winchr(i32** %7, i64* %8, i32 0, %struct.msdosfsmount* %120)
  store i32 %121, i32* %16, align 4
  %122 = load i32, i32* %16, align 4
  %123 = load i32*, i32** %13, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %13, align 8
  store i32 %122, i32* %123, align 4
  %125 = load i32, i32* %16, align 4
  %126 = ashr i32 %125, 8
  %127 = load i32*, i32** %13, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %128, i32** %13, align 8
  store i32 %126, i32* %127, align 4
  %129 = load i32, i32* %16, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %119
  %132 = load i32, i32* @WIN_LAST, align 4
  store i32 %132, i32* %15, align 4
  br label %133

133:                                              ; preds = %131, %119
  br label %109

134:                                              ; preds = %117
  %135 = load i64, i64* %8, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* @WIN_LAST, align 4
  store i32 %138, i32* %15, align 4
  br label %139

139:                                              ; preds = %137, %134
  %140 = load i32, i32* %15, align 4
  %141 = load %struct.winentry*, %struct.winentry** %9, align 8
  %142 = getelementptr inbounds %struct.winentry, %struct.winentry* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 8
  %145 = load i32, i32* %15, align 4
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  ret i32 %148
}

declare dso_local i64 @winLenFixup(i32*, i64) #1

declare dso_local i64 @mbsadjpos(i8**, i64, i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.winentry*, i32, i32) #1

declare dso_local i32 @unix2winchr(i32**, i64*, i32, %struct.msdosfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

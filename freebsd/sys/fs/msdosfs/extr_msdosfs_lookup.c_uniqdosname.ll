; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_lookup.c_uniqdosname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_lookup.c_uniqdosname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.denode = type { %struct.msdosfsmount* }
%struct.msdosfsmount = type { i32, i32 }
%struct.componentname = type { i32, i64 }
%struct.direntry = type { i64*, i32 }
%struct.buf = type { i8* }

@MSDOSFSMNT_SHORTNAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@SLOT_EMPTY = common dso_local global i64 0, align 8
@ATTR_VOLUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uniqdosname(%struct.denode* %0, %struct.componentname* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.denode*, align 8
  %6 = alloca %struct.componentname*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.msdosfsmount*, align 8
  %9 = alloca %struct.direntry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.buf*, align 8
  %15 = alloca i32, align 4
  store %struct.denode* %0, %struct.denode** %5, align 8
  store %struct.componentname* %1, %struct.componentname** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load %struct.denode*, %struct.denode** %5, align 8
  %17 = getelementptr inbounds %struct.denode, %struct.denode* %16, i32 0, i32 0
  %18 = load %struct.msdosfsmount*, %struct.msdosfsmount** %17, align 8
  store %struct.msdosfsmount* %18, %struct.msdosfsmount** %8, align 8
  %19 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %20 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MSDOSFSMNT_SHORTNAME, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %3
  %26 = load %struct.componentname*, %struct.componentname** %6, align 8
  %27 = getelementptr inbounds %struct.componentname, %struct.componentname* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = load i32*, i32** %7, align 8
  %31 = load %struct.componentname*, %struct.componentname** %6, align 8
  %32 = getelementptr inbounds %struct.componentname, %struct.componentname* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %35 = call i64 @unix2dosfn(i32* %29, i32* %30, i32 %33, i32 0, %struct.msdosfsmount* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %40

38:                                               ; preds = %25
  %39 = load i32, i32* @EINVAL, align 4
  br label %40

40:                                               ; preds = %38, %37
  %41 = phi i32 [ 0, %37 ], [ %39, %38 ]
  store i32 %41, i32* %4, align 4
  br label %151

42:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %43

43:                                               ; preds = %148, %42
  %44 = load %struct.componentname*, %struct.componentname** %6, align 8
  %45 = getelementptr inbounds %struct.componentname, %struct.componentname* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.componentname*, %struct.componentname** %6, align 8
  %50 = getelementptr inbounds %struct.componentname, %struct.componentname* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %54 = call i64 @unix2dosfn(i32* %47, i32* %48, i32 %51, i32 %52, %struct.msdosfsmount* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %43
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @EINVAL, align 4
  br label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @EEXIST, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  store i32 %64, i32* %4, align 4
  br label %151

65:                                               ; preds = %43
  store i32 0, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %66

66:                                               ; preds = %144, %65
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  br i1 %69, label %70, label %147

70:                                               ; preds = %66
  %71 = load %struct.denode*, %struct.denode** %5, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @pcbmap(%struct.denode* %71, i32 %72, i32* %13, i32 0, i32* %11)
  store i32 %73, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* @E2BIG, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %151

80:                                               ; preds = %75
  %81 = load i32, i32* %15, align 4
  store i32 %81, i32* %4, align 4
  br label %151

82:                                               ; preds = %70
  %83 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %84 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @NOCRED, align 4
  %89 = call i32 @bread(i32 %85, i32 %86, i32 %87, i32 %88, %struct.buf** %14)
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %82
  %93 = load i32, i32* %15, align 4
  store i32 %93, i32* %4, align 4
  br label %151

94:                                               ; preds = %82
  %95 = load %struct.buf*, %struct.buf** %14, align 8
  %96 = getelementptr inbounds %struct.buf, %struct.buf* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = bitcast i8* %97 to %struct.direntry*
  store %struct.direntry* %98, %struct.direntry** %9, align 8
  br label %99

99:                                               ; preds = %138, %94
  %100 = load %struct.direntry*, %struct.direntry** %9, align 8
  %101 = bitcast %struct.direntry* %100 to i8*
  %102 = load %struct.buf*, %struct.buf** %14, align 8
  %103 = getelementptr inbounds %struct.buf, %struct.buf* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = icmp ult i8* %101, %107
  br i1 %108, label %109, label %141

109:                                              ; preds = %99
  %110 = load %struct.direntry*, %struct.direntry** %9, align 8
  %111 = getelementptr inbounds %struct.direntry, %struct.direntry* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @SLOT_EMPTY, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %109
  %118 = load %struct.buf*, %struct.buf** %14, align 8
  %119 = call i32 @brelse(%struct.buf* %118)
  store i32 0, i32* %4, align 4
  br label %151

120:                                              ; preds = %109
  %121 = load %struct.direntry*, %struct.direntry** %9, align 8
  %122 = getelementptr inbounds %struct.direntry, %struct.direntry* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @ATTR_VOLUME, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  br label %138

128:                                              ; preds = %120
  %129 = load %struct.direntry*, %struct.direntry** %9, align 8
  %130 = getelementptr inbounds %struct.direntry, %struct.direntry* %129, i32 0, i32 0
  %131 = load i64*, i64** %130, align 8
  %132 = load i32*, i32** %7, align 8
  %133 = call i32 @bcmp(i64* %131, i32* %132, i32 11)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %128
  %136 = load i32, i32* @EEXIST, align 4
  store i32 %136, i32* %15, align 4
  br label %141

137:                                              ; preds = %128
  br label %138

138:                                              ; preds = %137, %127
  %139 = load %struct.direntry*, %struct.direntry** %9, align 8
  %140 = getelementptr inbounds %struct.direntry, %struct.direntry* %139, i32 1
  store %struct.direntry* %140, %struct.direntry** %9, align 8
  br label %99

141:                                              ; preds = %135, %99
  %142 = load %struct.buf*, %struct.buf** %14, align 8
  %143 = call i32 @brelse(%struct.buf* %142)
  br label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %12, align 4
  br label %66

147:                                              ; preds = %66
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %10, align 4
  br label %43

151:                                              ; preds = %117, %92, %80, %79, %63, %40
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i64 @unix2dosfn(i32*, i32*, i32, i32, %struct.msdosfsmount*) #1

declare dso_local i32 @pcbmap(%struct.denode*, i32, i32*, i32, i32*) #1

declare dso_local i32 @bread(i32, i32, i32, i32, %struct.buf**) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @bcmp(i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

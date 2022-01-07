; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd3.c_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd3.c_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grouphead = type { %struct.group*, %struct.grouphead*, i8* }
%struct.group = type { %struct.group*, i8* }

@HSHSIZE = common dso_local global i32 0, align 4
@groups = common dso_local global %struct.grouphead** null, align 8
@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @group(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.grouphead*, align 8
  %6 = alloca %struct.group*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to i8**
  store i8** %13, i8*** %4, align 8
  %14 = load i8**, i8*** %4, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %94

17:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %18

18:                                               ; preds = %39, %17
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @HSHSIZE, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = load %struct.grouphead**, %struct.grouphead*** @groups, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.grouphead*, %struct.grouphead** %23, i64 %25
  %27 = load %struct.grouphead*, %struct.grouphead** %26, align 8
  store %struct.grouphead* %27, %struct.grouphead** %5, align 8
  br label %28

28:                                               ; preds = %34, %22
  %29 = load %struct.grouphead*, %struct.grouphead** %5, align 8
  %30 = icmp ne %struct.grouphead* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %31
  %35 = load %struct.grouphead*, %struct.grouphead** %5, align 8
  %36 = getelementptr inbounds %struct.grouphead, %struct.grouphead* %35, i32 0, i32 1
  %37 = load %struct.grouphead*, %struct.grouphead** %36, align 8
  store %struct.grouphead* %37, %struct.grouphead** %5, align 8
  br label %28

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %18

42:                                               ; preds = %18
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 8
  %46 = trunc i64 %45 to i32
  %47 = call i64 @salloc(i32 %46)
  %48 = inttoptr i64 %47 to i8**
  store i8** %48, i8*** %7, align 8
  store i32 0, i32* %10, align 4
  %49 = load i8**, i8*** %7, align 8
  store i8** %49, i8*** %9, align 8
  br label %50

50:                                               ; preds = %74, %42
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @HSHSIZE, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %50
  %55 = load %struct.grouphead**, %struct.grouphead*** @groups, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.grouphead*, %struct.grouphead** %55, i64 %57
  %59 = load %struct.grouphead*, %struct.grouphead** %58, align 8
  store %struct.grouphead* %59, %struct.grouphead** %5, align 8
  br label %60

60:                                               ; preds = %69, %54
  %61 = load %struct.grouphead*, %struct.grouphead** %5, align 8
  %62 = icmp ne %struct.grouphead* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = load %struct.grouphead*, %struct.grouphead** %5, align 8
  %65 = getelementptr inbounds %struct.grouphead, %struct.grouphead* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = load i8**, i8*** %9, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i32 1
  store i8** %68, i8*** %9, align 8
  store i8* %66, i8** %67, align 8
  br label %69

69:                                               ; preds = %63
  %70 = load %struct.grouphead*, %struct.grouphead** %5, align 8
  %71 = getelementptr inbounds %struct.grouphead, %struct.grouphead* %70, i32 0, i32 1
  %72 = load %struct.grouphead*, %struct.grouphead** %71, align 8
  store %struct.grouphead* %72, %struct.grouphead** %5, align 8
  br label %60

73:                                               ; preds = %60
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %50

77:                                               ; preds = %50
  %78 = load i8**, i8*** %9, align 8
  store i8* null, i8** %78, align 8
  %79 = load i8**, i8*** %7, align 8
  %80 = call i32 @sort(i8** %79)
  %81 = load i8**, i8*** %7, align 8
  store i8** %81, i8*** %9, align 8
  br label %82

82:                                               ; preds = %90, %77
  %83 = load i8**, i8*** %9, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i8**, i8*** %9, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @printgroup(i8* %88)
  br label %90

90:                                               ; preds = %86
  %91 = load i8**, i8*** %9, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i32 1
  store i8** %92, i8*** %9, align 8
  br label %82

93:                                               ; preds = %82
  store i32 0, i32* %2, align 4
  br label %167

94:                                               ; preds = %1
  %95 = load i8**, i8*** %4, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 1
  %97 = load i8*, i8** %96, align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load i8**, i8*** %4, align 8
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @printgroup(i8* %101)
  store i32 0, i32* %2, align 4
  br label %167

103:                                              ; preds = %94
  %104 = load i8**, i8*** %4, align 8
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %8, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = call i32 @hash(i8* %106)
  store i32 %107, i32* %10, align 4
  %108 = load i8*, i8** %8, align 8
  %109 = call %struct.grouphead* @findgroup(i8* %108)
  store %struct.grouphead* %109, %struct.grouphead** %5, align 8
  %110 = icmp eq %struct.grouphead* %109, null
  br i1 %110, label %111, label %136

111:                                              ; preds = %103
  %112 = call i8* @calloc(i32 1, i32 24)
  %113 = bitcast i8* %112 to %struct.grouphead*
  store %struct.grouphead* %113, %struct.grouphead** %5, align 8
  %114 = icmp eq %struct.grouphead* %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %111
  %118 = load i8*, i8** %8, align 8
  %119 = call i8* @vcopy(i8* %118)
  %120 = load %struct.grouphead*, %struct.grouphead** %5, align 8
  %121 = getelementptr inbounds %struct.grouphead, %struct.grouphead* %120, i32 0, i32 2
  store i8* %119, i8** %121, align 8
  %122 = load %struct.grouphead*, %struct.grouphead** %5, align 8
  %123 = getelementptr inbounds %struct.grouphead, %struct.grouphead* %122, i32 0, i32 0
  store %struct.group* null, %struct.group** %123, align 8
  %124 = load %struct.grouphead**, %struct.grouphead*** @groups, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.grouphead*, %struct.grouphead** %124, i64 %126
  %128 = load %struct.grouphead*, %struct.grouphead** %127, align 8
  %129 = load %struct.grouphead*, %struct.grouphead** %5, align 8
  %130 = getelementptr inbounds %struct.grouphead, %struct.grouphead* %129, i32 0, i32 1
  store %struct.grouphead* %128, %struct.grouphead** %130, align 8
  %131 = load %struct.grouphead*, %struct.grouphead** %5, align 8
  %132 = load %struct.grouphead**, %struct.grouphead*** @groups, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.grouphead*, %struct.grouphead** %132, i64 %134
  store %struct.grouphead* %131, %struct.grouphead** %135, align 8
  br label %136

136:                                              ; preds = %117, %103
  %137 = load i8**, i8*** %4, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 1
  store i8** %138, i8*** %7, align 8
  br label %139

139:                                              ; preds = %163, %136
  %140 = load i8**, i8*** %7, align 8
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %166

143:                                              ; preds = %139
  %144 = call i8* @calloc(i32 1, i32 16)
  %145 = bitcast i8* %144 to %struct.group*
  store %struct.group* %145, %struct.group** %6, align 8
  %146 = icmp eq %struct.group* %145, null
  br i1 %146, label %147, label %149

147:                                              ; preds = %143
  %148 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %143
  %150 = load i8**, i8*** %7, align 8
  %151 = load i8*, i8** %150, align 8
  %152 = call i8* @vcopy(i8* %151)
  %153 = load %struct.group*, %struct.group** %6, align 8
  %154 = getelementptr inbounds %struct.group, %struct.group* %153, i32 0, i32 1
  store i8* %152, i8** %154, align 8
  %155 = load %struct.grouphead*, %struct.grouphead** %5, align 8
  %156 = getelementptr inbounds %struct.grouphead, %struct.grouphead* %155, i32 0, i32 0
  %157 = load %struct.group*, %struct.group** %156, align 8
  %158 = load %struct.group*, %struct.group** %6, align 8
  %159 = getelementptr inbounds %struct.group, %struct.group* %158, i32 0, i32 0
  store %struct.group* %157, %struct.group** %159, align 8
  %160 = load %struct.group*, %struct.group** %6, align 8
  %161 = load %struct.grouphead*, %struct.grouphead** %5, align 8
  %162 = getelementptr inbounds %struct.grouphead, %struct.grouphead* %161, i32 0, i32 0
  store %struct.group* %160, %struct.group** %162, align 8
  br label %163

163:                                              ; preds = %149
  %164 = load i8**, i8*** %7, align 8
  %165 = getelementptr inbounds i8*, i8** %164, i32 1
  store i8** %165, i8*** %7, align 8
  br label %139

166:                                              ; preds = %139
  store i32 0, i32* %2, align 4
  br label %167

167:                                              ; preds = %166, %99, %93
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local i64 @salloc(i32) #1

declare dso_local i32 @sort(i8**) #1

declare dso_local i32 @printgroup(i8*) #1

declare dso_local i32 @hash(i8*) #1

declare dso_local %struct.grouphead* @findgroup(i8*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @vcopy(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

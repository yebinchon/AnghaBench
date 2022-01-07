; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_cd9660.c_cd9660_rename_filename.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_cd9660.c_cd9660_rename_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8* }

@.str = private unnamed_addr constant [24 x i8] c"Rename_filename called\0A\00", align 1
@ISO_FILENAME_MAXLENGTH_BEFORE_VERSION = common dso_local global i32 0, align 4
@ISO_FILENAME_MAXLENGTH_WITH_PADDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@cn_next_child = common dso_local global i32 0, align 4
@dot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_10__*, %struct.TYPE_11__*, i32, i32)* @cd9660_rename_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @cd9660_rename_filename(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp sle i32 1, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp sle i32 %33, 2
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i1 [ false, %25 ], [ %34, %30 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 8, i32* %17, align 4
  br label %53

44:                                               ; preds = %35
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 31, i32* %17, align 4
  br label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @ISO_FILENAME_MAXLENGTH_BEFORE_VERSION, align 4
  store i32 %51, i32* %17, align 4
  br label %52

52:                                               ; preds = %50, %49
  br label %53

53:                                               ; preds = %52, %43
  %54 = load i32, i32* @ISO_FILENAME_MAXLENGTH_WITH_PADDING, align 4
  %55 = call i8* @emalloc(i32 %54)
  store i8* %55, i8** %18, align 8
  br label %56

56:                                               ; preds = %165, %53
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %62 = icmp ne %struct.TYPE_11__* %61, null
  br label %63

63:                                               ; preds = %60, %56
  %64 = phi i1 [ false, %56 ], [ %62, %60 ]
  br i1 %64, label %65, label %194

65:                                               ; preds = %63
  store i32 1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %12, align 4
  br label %66

66:                                               ; preds = %71, %65
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %14, align 4
  %69 = sdiv i32 %67, %68
  %70 = icmp sge i32 %69, 10
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %14, align 4
  %75 = mul nsw i32 %74, 10
  store i32 %75, i32* %14, align 4
  br label %66

76:                                               ; preds = %66
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %16, align 8
  br label %80

80:                                               ; preds = %90, %76
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %17, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %80
  %85 = load i8*, i8** %16, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 59
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %95

90:                                               ; preds = %84
  %91 = load i8*, i8** %16, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %16, align 8
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %15, align 4
  br label %80

95:                                               ; preds = %89, %80
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32, i32* %17, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* %15, align 4
  store i32 %102, i32* %10, align 4
  br label %107

103:                                              ; preds = %95
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %12, align 4
  %106 = sub nsw i32 %104, %105
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %103, %101
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %10, align 4
  %110 = sub nsw i32 %109, %108
  store i32 %110, i32* %10, align 4
  %111 = load i8*, i8** %18, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @memcpy(i8* %111, i8* %114, i32 %115)
  %117 = load i32, i32* %9, align 4
  store i32 %117, i32* %13, align 4
  br label %118

118:                                              ; preds = %121, %107
  %119 = load i32, i32* %12, align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %142

121:                                              ; preds = %118
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %14, align 4
  %124 = sdiv i32 %122, %123
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %14, align 4
  %128 = mul nsw i32 %126, %127
  %129 = sub nsw i32 %125, %128
  store i32 %129, i32* %13, align 4
  %130 = load i8*, i8** %18, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @sprintf(i8* %133, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %14, align 4
  %141 = sdiv i32 %140, 10
  store i32 %141, i32* %14, align 4
  br label %118

142:                                              ; preds = %118
  br label %143

143:                                              ; preds = %154, %142
  %144 = load i8*, i8** %16, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp ne i32 %146, 59
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %17, align 4
  %151 = icmp slt i32 %149, %150
  br label %152

152:                                              ; preds = %148, %143
  %153 = phi i1 [ false, %143 ], [ %151, %148 ]
  br i1 %153, label %154, label %165

154:                                              ; preds = %152
  %155 = load i8*, i8** %16, align 8
  %156 = load i8, i8* %155, align 1
  %157 = load i8*, i8** %18, align 8
  %158 = load i32, i32* %10, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  store i8 %156, i8* %160, align 1
  %161 = load i8*, i8** %16, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %16, align 8
  %163 = load i32, i32* %10, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %10, align 4
  br label %143

165:                                              ; preds = %152
  %166 = load i8*, i8** %18, align 8
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  store i8 59, i8* %169, align 1
  %170 = load i8*, i8** %18, align 8
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %170, i64 %173
  store i8 49, i8* %174, align 1
  %175 = load i8*, i8** %18, align 8
  %176 = load i32, i32* %10, align 4
  %177 = add nsw i32 %176, 2
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %175, i64 %178
  store i8 0, i8* %179, align 1
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = load i8*, i8** %18, align 8
  %186 = load i32, i32* %10, align 4
  %187 = add nsw i32 %186, 3
  %188 = call i32 @memcpy(i8* %184, i8* %185, i32 %187)
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %190 = load i32, i32* @cn_next_child, align 4
  %191 = call %struct.TYPE_11__* @TAILQ_NEXT(%struct.TYPE_11__* %189, i32 %190)
  store %struct.TYPE_11__* %191, %struct.TYPE_11__** %6, align 8
  %192 = load i32, i32* %9, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %9, align 4
  br label %56

194:                                              ; preds = %63
  %195 = load i8*, i8** %18, align 8
  %196 = call i32 @free(i8* %195)
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  ret %struct.TYPE_11__* %197
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @emalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_11__* @TAILQ_NEXT(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

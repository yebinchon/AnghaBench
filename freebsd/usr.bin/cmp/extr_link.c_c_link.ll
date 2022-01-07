; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/cmp/extr_link.c_c_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/cmp/extr_link.c_c_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@sflag = common dso_local global i32 0, align 4
@ERR_EXIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@xflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"%08llx %02x %02x\0A\00", align 1
@lflag = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"%6lld %3o %3o\0A\00", align 1
@DIFF_EXIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_link(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load i32, i32* @PATH_MAX, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %23 = load i32, i32* @PATH_MAX, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %12, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = sub i64 %20, 1
  %28 = trunc i64 %27 to i32
  %29 = call i32 @readlink(i8* %26, i8* %22, i32 %28)
  store i32 %29, i32* %15, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %4
  %32 = load i32, i32* @sflag, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @ERR_EXIT, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @err(i32 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %36)
  br label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @ERR_EXIT, align 4
  %40 = call i32 @exit(i32 %39) #4
  unreachable

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %4
  %43 = load i8*, i8** %7, align 8
  %44 = sub i64 %24, 1
  %45 = trunc i64 %44 to i32
  %46 = call i32 @readlink(i8* %43, i8* %25, i32 %45)
  store i32 %46, i32* %16, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = load i32, i32* @sflag, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @ERR_EXIT, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @err(i32 %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %53)
  br label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @ERR_EXIT, align 4
  %57 = call i32 @exit(i32 %56) #4
  unreachable

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %42
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* %15, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %63, %59
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %22, i64 %67
  store i8 0, i8* %68, align 1
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %16, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* %16, align 4
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %72, %65
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %25, i64 %76
  store i8 0, i8* %77, align 1
  store i32 0, i32* %14, align 4
  store i32 1, i32* %17, align 4
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %22, i64 %79
  store i8* %80, i8** %11, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %25, i64 %82
  store i8* %83, i8** %13, align 8
  br label %84

84:                                               ; preds = %135, %74
  %85 = load i8*, i8** %11, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i8*, i8** %13, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 0
  br label %94

94:                                               ; preds = %89, %84
  %95 = phi i1 [ false, %84 ], [ %93, %89 ]
  br i1 %95, label %96, label %140

96:                                               ; preds = %94
  %97 = load i8*, i8** %11, align 8
  %98 = load i8, i8* %97, align 1
  store i8 %98, i8* %18, align 1
  %99 = sext i8 %98 to i32
  %100 = load i8*, i8** %13, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %99, %102
  br i1 %103, label %104, label %132

104:                                              ; preds = %96
  %105 = load i64, i64* @xflag, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  store i32 1, i32* %14, align 4
  %108 = load i32, i32* %17, align 4
  %109 = sext i32 %108 to i64
  %110 = sub nsw i64 %109, 1
  %111 = load i8, i8* %18, align 1
  %112 = load i8*, i8** %13, align 8
  %113 = load i8, i8* %112, align 1
  %114 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %110, i8 signext %111, i8 signext %113)
  br label %131

115:                                              ; preds = %104
  %116 = load i64, i64* @lflag, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %115
  store i32 1, i32* %14, align 4
  %119 = load i32, i32* %17, align 4
  %120 = sext i32 %119 to i64
  %121 = load i8, i8* %18, align 1
  %122 = load i8*, i8** %13, align 8
  %123 = load i8, i8* %122, align 1
  %124 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 %120, i8 signext %121, i8 signext %123)
  br label %130

125:                                              ; preds = %115
  %126 = load i8*, i8** %5, align 8
  %127 = load i8*, i8** %7, align 8
  %128 = load i32, i32* %17, align 4
  %129 = call i32 @diffmsg(i8* %126, i8* %127, i32 %128, i32 1)
  br label %130

130:                                              ; preds = %125, %118
  br label %131

131:                                              ; preds = %130, %107
  br label %132

132:                                              ; preds = %131, %96
  %133 = load i32, i32* %17, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %17, align 4
  br label %135

135:                                              ; preds = %132
  %136 = load i8*, i8** %11, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %11, align 8
  %138 = load i8*, i8** %13, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %13, align 8
  br label %84

140:                                              ; preds = %94
  %141 = load i8*, i8** %11, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %140
  %146 = load i8*, i8** %13, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %145, %140
  %151 = load i8*, i8** %11, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = load i8*, i8** %7, align 8
  br label %159

157:                                              ; preds = %150
  %158 = load i8*, i8** %5, align 8
  br label %159

159:                                              ; preds = %157, %155
  %160 = phi i8* [ %156, %155 ], [ %158, %157 ]
  %161 = call i32 @eofmsg(i8* %160)
  br label %162

162:                                              ; preds = %159, %145
  %163 = load i32, i32* %14, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load i32, i32* @DIFF_EXIT, align 4
  %167 = call i32 @exit(i32 %166) #4
  unreachable

168:                                              ; preds = %162
  %169 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %169)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @readlink(i8*, i8*, i32) #2

declare dso_local i32 @err(i32, i8*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @printf(i8*, i64, i8 signext, i8 signext) #2

declare dso_local i32 @diffmsg(i8*, i8*, i32, i32) #2

declare dso_local i32 @eofmsg(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

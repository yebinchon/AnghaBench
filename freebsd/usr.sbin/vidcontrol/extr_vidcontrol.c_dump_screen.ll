; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/vidcontrol/extr_vidcontrol.c_dump_screen.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/vidcontrol/extr_vidcontrol.c_dump_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32*, i64, i64, i64 }

@CONS_GETINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"getting console information\00", align 1
@DUMP_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to allocate memory for dump\00", align 1
@CONS_SCRSHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"dumping screen\00", align 1
@DUMP_FMT_RAW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"SCRSHOT_%c%c%c%c\00", align 1
@DUMP_FMT_REV = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"failed to allocate memory for line buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @dump_screen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_screen(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 56, i32* %11, align 8
  %12 = load i32, i32* @CONS_GETINFO, align 4
  %13 = call i32 @ioctl(i32 0, i32 %12, %struct.TYPE_4__* %6)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = call i32 (...) @revert()
  %17 = call i32 @err(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 7
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 8
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @DUMP_ALL, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %32
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  br label %38

38:                                               ; preds = %30, %18
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %40, %42
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = call i8* @alloca(i32 %46)
  %48 = bitcast i8* %47 to i32*
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 5
  store i32* %48, i32** %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 5
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %38
  %54 = call i32 (...) @revert()
  %55 = call i32 @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %38
  %57 = load i32, i32* @CONS_SCRSHOT, align 4
  %58 = call i32 @ioctl(i32 0, i32 %57, %struct.TYPE_4__* %5)
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = call i32 (...) @revert()
  %62 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %56
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @DUMP_FMT_RAW, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %88

67:                                               ; preds = %63
  %68 = load i32, i32* @DUMP_FMT_REV, align 4
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %68, i32 2, i32 %70, i32 %72)
  %74 = load i32, i32* @stdout, align 4
  %75 = call i32 @fflush(i32 %74)
  %76 = load i32, i32* @STDOUT_FILENO, align 4
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 5
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %80, %82
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 4
  %86 = trunc i64 %85 to i32
  %87 = call i32 @write(i32 %76, i32* %78, i32 %86)
  br label %167

88:                                               ; preds = %63
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  %92 = call i8* @alloca(i32 %91)
  store i8* %92, i8** %7, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = call i32 (...) @revert()
  %97 = call i32 @errx(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %88
  store i32 0, i32* %9, align 4
  br label %99

99:                                               ; preds = %161, %98
  %100 = load i32, i32* %9, align 4
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %100, %102
  br i1 %103, label %104, label %164

104:                                              ; preds = %99
  store i32 0, i32* %8, align 4
  br label %105

105:                                              ; preds = %135, %104
  %106 = load i32, i32* %8, align 4
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %106, %108
  br i1 %109, label %110, label %138

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 5
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %9, align 4
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %114, %116
  %118 = add nsw i32 %113, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %112, i64 %119
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = and i32 %122, 255
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i64 @isprint(i32 %124)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %110
  store i32 32, i32* %10, align 4
  br label %128

128:                                              ; preds = %127, %110
  %129 = load i32, i32* %10, align 4
  %130 = trunc i32 %129 to i8
  %131 = load i8*, i8** %7, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  store i8 %130, i8* %134, align 1
  br label %135

135:                                              ; preds = %128
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %8, align 4
  br label %105

138:                                              ; preds = %105
  br label %139

139:                                              ; preds = %156, %138
  %140 = load i8*, i8** %7, align 8
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %8, align 4
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i8, i8* %140, i64 %143
  store i8 0, i8* %144, align 1
  br label %145

145:                                              ; preds = %139
  %146 = load i8*, i8** %7, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 32
  br i1 %152, label %153, label %156

153:                                              ; preds = %145
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  br label %156

156:                                              ; preds = %153, %145
  %157 = phi i1 [ false, %145 ], [ %155, %153 ]
  br i1 %157, label %139, label %158

158:                                              ; preds = %156
  %159 = load i8*, i8** %7, align 8
  %160 = call i32 @puts(i8* %159)
  br label %161

161:                                              ; preds = %158
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %9, align 4
  br label %99

164:                                              ; preds = %99
  %165 = load i32, i32* @stdout, align 4
  %166 = call i32 @fflush(i32 %165)
  br label %167

167:                                              ; preds = %164, %67
  ret void
}

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @revert(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @write(i32, i32*, i32) #1

declare dso_local i64 @isprint(i32) #1

declare dso_local i32 @puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

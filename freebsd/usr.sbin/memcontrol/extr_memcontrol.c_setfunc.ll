; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/memcontrol/extr_memcontrol.c_setfunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/memcontrol/extr_memcontrol.c_setfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32 }
%struct.mem_range_desc = type { i64, i32, i32, i8* }
%struct.mem_range_op = type { i64*, %struct.mem_range_desc* }

@.str = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"b:l:o:\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@optind = common dso_local global i64 0, align 8
@attrnames = common dso_local global %struct.TYPE_2__* null, align 8
@MDF_SETTABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@MEMRANGE_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"can't set range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8**)* @setfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setfunc(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.mem_range_desc, align 8
  %8 = alloca %struct.mem_range_op, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %12 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %7, i32 0, i32 3
  store i8* null, i8** %12, align 8
  %13 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %7, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %7, i32 0, i32 1
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %7, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strcpy(i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %75, %3
  %19 = load i32, i32* %5, align 4
  %20 = load i8**, i8*** %6, align 8
  %21 = call i32 @getopt(i32 %19, i8** %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %21, i32* %10, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %76

23:                                               ; preds = %18
  %24 = load i32, i32* %10, align 4
  switch i32 %24, label %73 [
    i32 98, label %25
    i32 108, label %40
    i32 111, label %56
    i32 63, label %72
  ]

25:                                               ; preds = %23
  %26 = load i8*, i8** @optarg, align 8
  %27 = call i8* @strtouq(i8* %26, i8** %11, i32 0)
  %28 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %7, i32 0, i32 3
  store i8* %27, i8** %28, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = load i8*, i8** @optarg, align 8
  %31 = icmp eq i8* %29, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %25
  %33 = load i8*, i8** %11, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32, %25
  %38 = call i32 @help(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %32
  br label %75

40:                                               ; preds = %23
  %41 = load i8*, i8** @optarg, align 8
  %42 = call i8* @strtouq(i8* %41, i8** %11, i32 0)
  %43 = ptrtoint i8* %42 to i64
  %44 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %7, i32 0, i32 0
  store i64 %43, i64* %44, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load i8*, i8** @optarg, align 8
  %47 = icmp eq i8* %45, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %40
  %49 = load i8*, i8** %11, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48, %40
  %54 = call i32 @help(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %48
  br label %75

56:                                               ; preds = %23
  %57 = load i8*, i8** @optarg, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load i8*, i8** @optarg, align 8
  %63 = call i32 @strlen(i8* %62)
  %64 = icmp sgt i32 %63, 7
  br i1 %64, label %65, label %67

65:                                               ; preds = %61, %56
  %66 = call i32 @help(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %61
  %68 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %7, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** @optarg, align 8
  %71 = call i32 @strcpy(i32 %69, i8* %70)
  br label %75

72:                                               ; preds = %23
  br label %73

73:                                               ; preds = %23, %72
  %74 = call i32 @help(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %67, %55, %39
  br label %18

76:                                               ; preds = %18
  %77 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %7, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = call i32 @help(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %76
  %83 = load i64, i64* @optind, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = sub nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %5, align 4
  %88 = load i64, i64* @optind, align 8
  %89 = load i8**, i8*** %6, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 %88
  store i8** %90, i8*** %6, align 8
  br label %91

91:                                               ; preds = %152, %82
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %5, align 4
  %94 = icmp ne i32 %92, 0
  br i1 %94, label %95, label %155

95:                                               ; preds = %91
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %139, %95
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @attrnames, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %142

104:                                              ; preds = %96
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @attrnames, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i8**, i8*** %6, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @strcmp(i32* %110, i8* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %138, label %116

116:                                              ; preds = %104
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @attrnames, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @MDF_SETTABLE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %116
  %127 = call i32 @help(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %116
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** @attrnames, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %7, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %134
  store i32 %137, i32* %135, align 8
  br label %142

138:                                              ; preds = %104
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %9, align 4
  br label %96

142:                                              ; preds = %128, %96
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** @attrnames, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %150, label %152

150:                                              ; preds = %142
  %151 = call i32 @help(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %152

152:                                              ; preds = %150, %142
  %153 = load i8**, i8*** %6, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i32 1
  store i8** %154, i8*** %6, align 8
  br label %91

155:                                              ; preds = %91
  %156 = getelementptr inbounds %struct.mem_range_op, %struct.mem_range_op* %8, i32 0, i32 1
  store %struct.mem_range_desc* %7, %struct.mem_range_desc** %156, align 8
  %157 = getelementptr inbounds %struct.mem_range_op, %struct.mem_range_op* %8, i32 0, i32 0
  %158 = load i64*, i64** %157, align 8
  %159 = getelementptr inbounds i64, i64* %158, i64 0
  store i64 0, i64* %159, align 8
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* @MEMRANGE_SET, align 4
  %162 = call i64 @ioctl(i32 %160, i32 %161, %struct.mem_range_op* %8)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %155
  %165 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %166

166:                                              ; preds = %164, %155
  ret void
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @strtouq(i8*, i8**, i32) #1

declare dso_local i32 @help(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcmp(i32*, i8*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.mem_range_op*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

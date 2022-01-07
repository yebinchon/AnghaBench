; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/memcontrol/extr_memcontrol.c_clearfunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/memcontrol/extr_memcontrol.c_clearfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_range_desc = type { i64, i64, i32, i32 }
%struct.mem_range_op = type { %struct.mem_range_desc*, i8** }

@.str = private unnamed_addr constant [7 x i8] c"b:l:o:\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@MEMRANGE_SET_REMOVE = common dso_local global i8* null, align 8
@MDF_ACTIVE = common dso_local global i32 0, align 4
@MDF_FIXACTIVE = common dso_local global i32 0, align 4
@MEMRANGE_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"couldn't clear range owned by '%s'\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"couldn't clear range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8**)* @clearfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clearfunc(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.mem_range_desc, align 8
  %8 = alloca %struct.mem_range_desc*, align 8
  %9 = alloca %struct.mem_range_op, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %15 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %7, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %7, i32 0, i32 1
  store i64 0, i64* %16, align 8
  store i8* null, i8** %14, align 8
  br label %17

17:                                               ; preds = %73, %3
  %18 = load i32, i32* %5, align 4
  %19 = load i8**, i8*** %6, align 8
  %20 = call i32 @getopt(i32 %18, i8** %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %12, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %74

22:                                               ; preds = %17
  %23 = load i32, i32* %12, align 4
  switch i32 %23, label %71 [
    i32 98, label %24
    i32 108, label %40
    i32 111, label %56
    i32 63, label %70
  ]

24:                                               ; preds = %22
  %25 = load i8*, i8** @optarg, align 8
  %26 = call i8* @strtouq(i8* %25, i8** %13, i32 0)
  %27 = ptrtoint i8* %26 to i64
  %28 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %7, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = load i8*, i8** @optarg, align 8
  %31 = icmp eq i8* %29, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %24
  %33 = load i8*, i8** %13, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32, %24
  %38 = call i32 @help(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %32
  br label %73

40:                                               ; preds = %22
  %41 = load i8*, i8** @optarg, align 8
  %42 = call i8* @strtouq(i8* %41, i8** %13, i32 0)
  %43 = ptrtoint i8* %42 to i64
  %44 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %7, i32 0, i32 1
  store i64 %43, i64* %44, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = load i8*, i8** @optarg, align 8
  %47 = icmp eq i8* %45, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %40
  %49 = load i8*, i8** %13, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48, %40
  %54 = call i32 @help(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %48
  br label %73

56:                                               ; preds = %22
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
  %66 = call i32 @help(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i8*, i8** @optarg, align 8
  %69 = call i8* @strdup(i8* %68)
  store i8* %69, i8** %14, align 8
  br label %73

70:                                               ; preds = %22
  br label %71

71:                                               ; preds = %22, %70
  %72 = call i32 @help(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %67, %55, %39
  br label %17

74:                                               ; preds = %17
  %75 = load i8*, i8** %14, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %147

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %7, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %7, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81, %77
  %86 = call i32 @help(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %81
  %88 = load i32, i32* %4, align 4
  %89 = call %struct.mem_range_desc* @mrgetall(i32 %88, i32* %11)
  store %struct.mem_range_desc* %89, %struct.mem_range_desc** %8, align 8
  %90 = load i8*, i8** @MEMRANGE_SET_REMOVE, align 8
  %91 = getelementptr inbounds %struct.mem_range_op, %struct.mem_range_op* %9, i32 0, i32 1
  %92 = load i8**, i8*** %91, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 0
  store i8* %90, i8** %93, align 8
  store i32 0, i32* %10, align 4
  br label %94

94:                                               ; preds = %143, %87
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %146

98:                                               ; preds = %94
  %99 = load i8*, i8** %14, align 8
  %100 = load %struct.mem_range_desc*, %struct.mem_range_desc** %8, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %100, i64 %102
  %104 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @strcmp(i8* %99, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %142, label %108

108:                                              ; preds = %98
  %109 = load %struct.mem_range_desc*, %struct.mem_range_desc** %8, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %109, i64 %111
  %113 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @MDF_ACTIVE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %142

118:                                              ; preds = %108
  %119 = load %struct.mem_range_desc*, %struct.mem_range_desc** %8, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %119, i64 %121
  %123 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @MDF_FIXACTIVE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %142, label %128

128:                                              ; preds = %118
  %129 = load %struct.mem_range_desc*, %struct.mem_range_desc** %8, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %129, i64 %131
  %133 = getelementptr inbounds %struct.mem_range_op, %struct.mem_range_op* %9, i32 0, i32 0
  store %struct.mem_range_desc* %132, %struct.mem_range_desc** %133, align 8
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @MEMRANGE_SET, align 4
  %136 = call i64 @ioctl(i32 %134, i32 %135, %struct.mem_range_op* %9)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %128
  %139 = load i8*, i8** %14, align 8
  %140 = call i32 @warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %139)
  br label %141

141:                                              ; preds = %138, %128
  br label %142

142:                                              ; preds = %141, %118, %108, %98
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %10, align 4
  br label %94

146:                                              ; preds = %94
  br label %167

147:                                              ; preds = %74
  %148 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %7, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %164

151:                                              ; preds = %147
  %152 = load i8*, i8** @MEMRANGE_SET_REMOVE, align 8
  %153 = getelementptr inbounds %struct.mem_range_op, %struct.mem_range_op* %9, i32 0, i32 1
  %154 = load i8**, i8*** %153, align 8
  %155 = getelementptr inbounds i8*, i8** %154, i64 0
  store i8* %152, i8** %155, align 8
  %156 = getelementptr inbounds %struct.mem_range_op, %struct.mem_range_op* %9, i32 0, i32 0
  store %struct.mem_range_desc* %7, %struct.mem_range_desc** %156, align 8
  %157 = load i32, i32* %4, align 4
  %158 = load i32, i32* @MEMRANGE_SET, align 4
  %159 = call i64 @ioctl(i32 %157, i32 %158, %struct.mem_range_op* %9)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %151
  %162 = call i32 @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %163

163:                                              ; preds = %161, %151
  br label %166

164:                                              ; preds = %147
  %165 = call i32 @help(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %166

166:                                              ; preds = %164, %163
  br label %167

167:                                              ; preds = %166, %146
  ret void
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @strtouq(i8*, i8**, i32) #1

declare dso_local i32 @help(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local %struct.mem_range_desc* @mrgetall(i32, i32*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.mem_range_op*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

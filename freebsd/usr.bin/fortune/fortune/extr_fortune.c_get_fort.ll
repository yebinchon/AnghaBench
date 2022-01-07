; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/fortune/fortune/extr_fortune.c_get_fort.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/fortune/fortune/extr_fortune.c_get_fort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32, i32*, %struct.TYPE_12__, i32, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@File_list = common dso_local global %struct.TYPE_13__* null, align 8
@NO_PROB = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"choice = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"    skip \22%s\22, %d%% (choice = %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"using \22%s\22, %d%% (choice = %d)\0A\00", align 1
@Noprob_tbl = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"choice = %d (of %u) \0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"    skip \22%s\22, %u (choice = %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"using \22%s\22, %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"picking child\0A\00", align 1
@Fortfile = common dso_local global %struct.TYPE_13__* null, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@Seekpts = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @get_fort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_fort() #0 {
  %1 = alloca %struct.TYPE_13__*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_13__*, %struct.TYPE_13__** @File_list, align 8
  %4 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 6
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %6 = icmp eq %struct.TYPE_13__* %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %0
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** @File_list, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NO_PROB, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %7, %0
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** @File_list, align 8
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %1, align 8
  br label %67

15:                                               ; preds = %7
  %16 = call i32 @arc4random_uniform(i32 100)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* @stderr, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @DPRINTF(i32 1, i32 %18)
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** @File_list, align 8
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %1, align 8
  br label %21

21:                                               ; preds = %53, %15
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NO_PROB, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %21
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %57

35:                                               ; preds = %27
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = sub nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* @stderr, align 4
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @DPRINTF(i32 1, i32 %50)
  br label %52

52:                                               ; preds = %35
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 6
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %1, align 8
  br label %21

57:                                               ; preds = %34, %21
  %58 = load i32, i32* @stderr, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @DPRINTF(i32 1, i32 %65)
  br label %67

67:                                               ; preds = %57, %13
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @NO_PROB, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %75 = call i32 @get_tbl(%struct.TYPE_13__* %74)
  br label %130

76:                                               ; preds = %67
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 6
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = icmp ne %struct.TYPE_13__* %79, null
  br i1 %80, label %81, label %127

81:                                               ; preds = %76
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %83 = call i32 @sum_noprobs(%struct.TYPE_13__* %82)
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @Noprob_tbl, i32 0, i32 0), align 4
  %85 = call i32 @arc4random_uniform(i32 %84)
  store i32 %85, i32* %2, align 4
  %86 = load i32, i32* @stderr, align 4
  %87 = load i32, i32* %2, align 4
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @Noprob_tbl, i32 0, i32 0), align 4
  %89 = call i32 @DPRINTF(i32 1, i32 %88)
  br label %90

90:                                               ; preds = %97, %81
  %91 = load i32, i32* %2, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp uge i32 %91, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %90
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %2, align 4
  %103 = sub i32 %102, %101
  store i32 %103, i32* %2, align 4
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 6
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %105, align 8
  store %struct.TYPE_13__* %106, %struct.TYPE_13__** %1, align 8
  %107 = load i32, i32* @stderr, align 4
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %2, align 4
  %116 = call i32 @DPRINTF(i32 1, i32 %115)
  br label %90

117:                                              ; preds = %90
  %118 = load i32, i32* @stderr, align 4
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @DPRINTF(i32 1, i32 %125)
  br label %127

127:                                              ; preds = %117, %76
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %129 = call i32 @get_tbl(%struct.TYPE_13__* %128)
  br label %130

130:                                              ; preds = %127, %73
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load i32, i32* @stderr, align 4
  %137 = call i32 @DPRINTF(i32 1, i32 ptrtoint ([15 x i8]* @.str.6 to i32))
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %139 = call %struct.TYPE_13__* @pick_child(%struct.TYPE_13__* %138)
  store %struct.TYPE_13__* %139, %struct.TYPE_13__** %1, align 8
  br label %140

140:                                              ; preds = %135, %130
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  store %struct.TYPE_13__* %141, %struct.TYPE_13__** @Fortfile, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %143 = call i32 @get_pos(%struct.TYPE_13__* %142)
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %145 = call i32 @open_dat(%struct.TYPE_13__* %144)
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = sext i32 %151 to i64
  %153 = mul i64 %152, 4
  %154 = add i64 4, %153
  %155 = trunc i64 %154 to i32
  %156 = load i32, i32* @SEEK_SET, align 4
  %157 = call i32 @lseek(i32 %148, i32 %155, i32 %156)
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load i32*, i32** @Seekpts, align 8
  %162 = call i32 @read(i32 %160, i32* %161, i32 8)
  %163 = load i32*, i32** @Seekpts, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @be64toh(i32 %165)
  %167 = load i32*, i32** @Seekpts, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  store i32 %166, i32* %168, align 4
  %169 = load i32*, i32** @Seekpts, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @be64toh(i32 %171)
  %173 = load i32*, i32** @Seekpts, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  store i32 %172, i32* %174, align 4
  ret void
}

declare dso_local i32 @arc4random_uniform(i32) #1

declare dso_local i32 @DPRINTF(i32, i32) #1

declare dso_local i32 @get_tbl(%struct.TYPE_13__*) #1

declare dso_local i32 @sum_noprobs(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @pick_child(%struct.TYPE_13__*) #1

declare dso_local i32 @get_pos(%struct.TYPE_13__*) #1

declare dso_local i32 @open_dat(%struct.TYPE_13__*) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @be64toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

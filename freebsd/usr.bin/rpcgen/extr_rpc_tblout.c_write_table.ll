; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_tblout.c_write_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_tblout.c_write_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_17__*, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32, i8*, i32, %struct.TYPE_15__, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s_%s\00", align 1
@fout = common dso_local global i32 0, align 4
@tbl_hdr = common dso_local global i32 0, align 4
@null_entry = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"\0A/*\0A * WARNING: table out of order\0A */\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"WARNING %s table is out of order\00", align 1
@nonfatalerrors = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"\0A\09(char *(*)())RPCGEN_ACTION(\00", align 1
@newstyle = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"),\0A\00", align 1
@tbl_end = common dso_local global i32 0, align 4
@tbl_nproc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @write_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_table(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [100 x i8], align 16
  %8 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %3, align 8
  br label %14

14:                                               ; preds = %150, %1
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %16 = icmp ne %struct.TYPE_16__* %15, null
  br i1 %16, label %17, label %154

17:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  %18 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @locase(i32 %21)
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @s_print(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  %27 = load i32, i32* @fout, align 4
  %28 = load i32, i32* @tbl_hdr, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %32 = call i32 (i32, i8*, ...) @f_print(i32 %27, i8* %30, i8* %31)
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %36 = call i64 @nullproc(%struct.TYPE_17__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %43

39:                                               ; preds = %17
  store i32 1, i32* %6, align 4
  %40 = load i32, i32* @null_entry, align 4
  %41 = load i32, i32* @fout, align 4
  %42 = call i32 @fputs(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %38
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %45, align 8
  store %struct.TYPE_17__* %46, %struct.TYPE_17__** %4, align 8
  br label %47

47:                                               ; preds = %134, %43
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %49 = icmp ne %struct.TYPE_17__* %48, null
  br i1 %49, label %50, label %138

50:                                               ; preds = %47
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @atoi(i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  %58 = icmp ne i32 %55, %56
  br i1 %58, label %59, label %70

59:                                               ; preds = %50
  %60 = load i32, i32* @fout, align 4
  %61 = call i32 (i32, i8*, ...) @f_print(i32 %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %66 = call i32 @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %65)
  store i32 1, i32* %8, align 4
  store i32 1, i32* @nonfatalerrors, align 4
  br label %67

67:                                               ; preds = %64, %59
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %67, %50
  %71 = load i32, i32* @fout, align 4
  %72 = call i32 (i32, i8*, ...) @f_print(i32 %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i64, i64* @newstyle, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %70
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @pvname_svc(i32 %78, i32 %81)
  br label %97

83:                                               ; preds = %70
  %84 = load i64, i64* @newstyle, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* @fout, align 4
  %88 = call i32 (i32, i8*, ...) @f_print(i32 %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %83
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @pvname(i32 %92, i32 %95)
  br label %97

97:                                               ; preds = %89, %75
  %98 = load i32, i32* @fout, align 4
  %99 = call i32 (i32, i8*, ...) @f_print(i32 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp sgt i32 %102, 1
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @printit(i8* null, i32 %108)
  br label %126

110:                                              ; preds = %97
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @printit(i8* %117, i32 %124)
  br label %126

126:                                              ; preds = %110, %104
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @printit(i8* %129, i32 %132)
  br label %134

134:                                              ; preds = %126
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 6
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %136, align 8
  store %struct.TYPE_17__* %137, %struct.TYPE_17__** %4, align 8
  br label %47

138:                                              ; preds = %47
  %139 = load i32, i32* @tbl_end, align 4
  %140 = load i32, i32* @fout, align 4
  %141 = call i32 @fputs(i32 %139, i32 %140)
  %142 = load i32, i32* @fout, align 4
  %143 = load i32, i32* @tbl_nproc, align 4
  %144 = sext i32 %143 to i64
  %145 = inttoptr i64 %144 to i8*
  %146 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %147 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %148 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %149 = call i32 (i32, i8*, ...) @f_print(i32 %142, i8* %145, i8* %146, i8* %147, i8* %148)
  br label %150

150:                                              ; preds = %138
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %152, align 8
  store %struct.TYPE_16__* %153, %struct.TYPE_16__** %3, align 8
  br label %14

154:                                              ; preds = %14
  ret void
}

declare dso_local i32 @s_print(i8*, i8*, i32, i32) #1

declare dso_local i32 @locase(i32) #1

declare dso_local i32 @f_print(i32, i8*, ...) #1

declare dso_local i64 @nullproc(%struct.TYPE_17__*) #1

declare dso_local i32 @fputs(i32, i32) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @pvname_svc(i32, i32) #1

declare dso_local i32 @pvname(i32, i32) #1

declare dso_local i32 @printit(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

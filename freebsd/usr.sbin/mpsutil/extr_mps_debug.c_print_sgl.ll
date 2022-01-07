; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mpsutil/extr_mps_debug.c_print_sgl.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mpsutil/extr_mps_debug.c_print_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"SGL for command\0A\00", align 1
@MPS_FRAME_LEN = common dso_local global i32 0, align 4
@MPI2_SGE_FLAGS_SHIFT = common dso_local global i32 0, align 4
@SGL_FLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"seg%d flags=%x %s len= 0x%06x addr=0x%016jx\0A\00", align 1
@MPI2_SGE_FLAGS_END_OF_LIST = common dso_local global i32 0, align 4
@MPI2_SGE_FLAGS_END_OF_BUFFER = common dso_local global i32 0, align 4
@MPI2_SGE_FLAGS_LAST_ELEMENT = common dso_local global i32 0, align 4
@MPI2_SGE_FLAGS_CHAIN_ELEMENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Invalid chain element\0A\00", align 1
@MPI2_SGE_FLAGS_64_BIT_ADDRESSING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"chain64 flags=0x%x %s len=0x%x Offset=0x%x addr=0x%016jx\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"chain32 flags=0x%x %s len=0x%x Offset=0x%x addr=0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @print_sgl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_sgl(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [128 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %9, align 8
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** %12, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = load i32, i32* %5, align 4
  %19 = mul nsw i32 %18, 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  %22 = bitcast i8* %21 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %7, align 8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %24 = load i8*, i8** %12, align 8
  %25 = load i32, i32* @MPS_FRAME_LEN, align 4
  %26 = call i32 @hexdump(i8* %24, i32 %25, i32* null, i32 0)
  br label %27

27:                                               ; preds = %142, %3
  %28 = load i8*, i8** %12, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %143

30:                                               ; preds = %27
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MPI2_SGE_FLAGS_SHIFT, align 4
  %35 = ashr i32 %33, %34
  store i32 %35, i32* %11, align 4
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %37 = call i32 @bzero(i8* %36, i32 128)
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @SGL_FLAGS, align 4
  %40 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %41 = call i32 @mps_parse_flags(i32 %38, i32 %39, i8* %40, i32 128)
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 16777215
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = call i32 @mps_to_u64(i32* %50)
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43, i8* %44, i32 %48, i32 %51)
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @MPI2_SGE_FLAGS_END_OF_LIST, align 4
  %55 = load i32, i32* @MPI2_SGE_FLAGS_END_OF_BUFFER, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %53, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %30
  br label %143

60:                                               ; preds = %30
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 1
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %7, align 8
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @MPI2_SGE_FLAGS_LAST_ELEMENT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %142

69:                                               ; preds = %60
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %71 = bitcast %struct.TYPE_5__* %70 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %71, %struct.TYPE_6__** %8, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @MPI2_SGE_FLAGS_CHAIN_ELEMENT, align 4
  %76 = and i32 %74, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %143

80:                                               ; preds = %69
  %81 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %82 = call i32 @bzero(i8* %81, i32 128)
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @SGL_FLAGS, align 4
  %87 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %88 = call i32 @mps_parse_flags(i32 %85, i32 %86, i8* %87, i32 128)
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @MPI2_SGE_FLAGS_64_BIT_ADDRESSING, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %80
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = call i32 @mps_to_u64(i32* %108)
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %98, i8* %99, i32 %102, i32 %105, i32 %109)
  br label %127

111:                                              ; preds = %80
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %114, i8* %115, i32 %118, i32 %121, i32 %125)
  br label %127

127:                                              ; preds = %111, %95
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %6, align 4
  %130 = icmp sle i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  br label %143

132:                                              ; preds = %127
  %133 = load i32, i32* @MPS_FRAME_LEN, align 4
  %134 = load i8*, i8** %12, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8* %136, i8** %12, align 8
  %137 = load i8*, i8** %12, align 8
  %138 = bitcast i8* %137 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %138, %struct.TYPE_5__** %7, align 8
  %139 = load i8*, i8** %12, align 8
  %140 = load i32, i32* @MPS_FRAME_LEN, align 4
  %141 = call i32 @hexdump(i8* %139, i32 %140, i32* null, i32 0)
  br label %142

142:                                              ; preds = %132, %60
  br label %27

143:                                              ; preds = %131, %78, %59, %27
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @hexdump(i8*, i32, i32*, i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @mps_parse_flags(i32, i32, i8*, i32) #1

declare dso_local i32 @mps_to_u64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

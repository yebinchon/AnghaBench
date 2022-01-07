; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_table.c_mps_print_sgl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_table.c_mps_print_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_softc = type { i32 }
%struct.mps_command = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.mps_chain = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"SGL for command %p\0A\00", align 1
@MPI2_SGE_FLAGS_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"seg%d flags=0x%02x len=0x%06x addr=0x%016jx\0A\00", align 1
@MPI2_SGE_FLAGS_END_OF_LIST = common dso_local global i32 0, align 4
@MPI2_SGE_FLAGS_END_OF_BUFFER = common dso_local global i32 0, align 4
@MPI2_SGE_FLAGS_LAST_ELEMENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"chain flags=0x%x len=0x%x Offset=0x%x Address=0x%x\0A\00", align 1
@chain_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mps_print_sgl(%struct.mps_softc* %0, %struct.mps_command* %1, i32 %2) #0 {
  %4 = alloca %struct.mps_softc*, align 8
  %5 = alloca %struct.mps_command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mps_chain*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mps_softc* %0, %struct.mps_softc** %4, align 8
  store %struct.mps_command* %1, %struct.mps_command** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.mps_chain* null, %struct.mps_chain** %10, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.mps_command*, %struct.mps_command** %5, align 8
  %15 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %9, align 8
  %18 = load %struct.mps_command*, %struct.mps_command** %5, align 8
  %19 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = load i32, i32* %6, align 4
  %24 = mul nsw i32 %23, 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  %27 = bitcast i8* %26 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %7, align 8
  %28 = load %struct.mps_command*, %struct.mps_command** %5, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.mps_command* %28)
  %30 = load i8*, i8** %11, align 8
  %31 = call i32 @hexdump(i8* %30, i32 128, i32* null, i32 0)
  br label %32

32:                                               ; preds = %106, %3
  %33 = load i8*, i8** %11, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %107

35:                                               ; preds = %32
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le32toh(i32 %38)
  %40 = load i32, i32* @MPI2_SGE_FLAGS_SHIFT, align 4
  %41 = ashr i32 %39, %40
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32toh(i32 %46)
  %48 = and i32 %47, 16777215
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = call i32 @mps_to_u64(i32* %50)
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43, i32 %48, i32 %51)
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @MPI2_SGE_FLAGS_END_OF_LIST, align 4
  %55 = load i32, i32* @MPI2_SGE_FLAGS_END_OF_BUFFER, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %53, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %35
  br label %107

60:                                               ; preds = %35
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 1
  store %struct.TYPE_3__* %62, %struct.TYPE_3__** %7, align 8
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @MPI2_SGE_FLAGS_LAST_ELEMENT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %106

69:                                               ; preds = %60
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %71 = bitcast %struct.TYPE_3__* %70 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %71, %struct.TYPE_4__** %8, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le16toh(i32 %77)
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @le32toh(i32 %84)
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %78, i32 %81, i32 %85)
  %87 = load %struct.mps_chain*, %struct.mps_chain** %10, align 8
  %88 = icmp eq %struct.mps_chain* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %69
  %90 = load %struct.mps_command*, %struct.mps_command** %5, align 8
  %91 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %90, i32 0, i32 0
  %92 = call %struct.mps_chain* @TAILQ_FIRST(i32* %91)
  store %struct.mps_chain* %92, %struct.mps_chain** %10, align 8
  br label %97

93:                                               ; preds = %69
  %94 = load %struct.mps_chain*, %struct.mps_chain** %10, align 8
  %95 = load i32, i32* @chain_link, align 4
  %96 = call %struct.mps_chain* @TAILQ_NEXT(%struct.mps_chain* %94, i32 %95)
  store %struct.mps_chain* %96, %struct.mps_chain** %10, align 8
  br label %97

97:                                               ; preds = %93, %89
  %98 = load %struct.mps_chain*, %struct.mps_chain** %10, align 8
  %99 = getelementptr inbounds %struct.mps_chain, %struct.mps_chain* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i8*
  store i8* %101, i8** %11, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = bitcast i8* %102 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %103, %struct.TYPE_3__** %7, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = call i32 @hexdump(i8* %104, i32 128, i32* null, i32 0)
  br label %106

106:                                              ; preds = %97, %60
  br label %32

107:                                              ; preds = %59, %32
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @hexdump(i8*, i32, i32*, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @mps_to_u64(i32*) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local %struct.mps_chain* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.mps_chain* @TAILQ_NEXT(%struct.mps_chain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

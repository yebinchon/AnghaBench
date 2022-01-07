; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_display_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_display_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statics = type { i8**, i32, i32, i32, i32, i32, i32 }

@procstate_names = common dso_local global i32 0, align 4
@num_procstates = common dso_local global i32 0, align 4
@lprocstates = common dso_local global i8* null, align 8
@cpustate_names = common dso_local global i8** null, align 8
@swap_names = common dso_local global i32 0, align 4
@num_swap = common dso_local global i32 0, align 4
@lswap = common dso_local global i8* null, align 8
@CPUSTATES = common dso_local global i32 0, align 4
@num_cpustates = common dso_local global i32 0, align 4
@lcpustates = common dso_local global i8* null, align 8
@cpustate_columns = common dso_local global i32* null, align 8
@memory_names = common dso_local global i32 0, align 4
@num_memory = common dso_local global i32 0, align 4
@lmemory = common dso_local global i8* null, align 8
@arc_names = common dso_local global i32 0, align 4
@carc_names = common dso_local global i32 0, align 4
@cpustate_total_length = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @display_init(%struct.statics* %0) #0 {
  %2 = alloca %struct.statics*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.statics* %0, %struct.statics** %2, align 8
  %7 = load %struct.statics*, %struct.statics** %2, align 8
  %8 = call i32 @display_updatecpus(%struct.statics* %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %87

11:                                               ; preds = %1
  %12 = load %struct.statics*, %struct.statics** %2, align 8
  %13 = getelementptr inbounds %struct.statics, %struct.statics* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* @procstate_names, align 4
  store i32 8, i32* @num_procstates, align 4
  %15 = load i32, i32* @num_procstates, align 4
  %16 = icmp sgt i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* @num_procstates, align 4
  %20 = call i8* @calloc(i32 %19, i32 4)
  store i8* %20, i8** @lprocstates, align 8
  %21 = load %struct.statics*, %struct.statics** %2, align 8
  %22 = getelementptr inbounds %struct.statics, %struct.statics* %21, i32 0, i32 0
  %23 = load i8**, i8*** %22, align 8
  store i8** %23, i8*** @cpustate_names, align 8
  %24 = load %struct.statics*, %struct.statics** %2, align 8
  %25 = getelementptr inbounds %struct.statics, %struct.statics* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* @swap_names, align 4
  store i32 7, i32* @num_swap, align 4
  %27 = load i32, i32* @num_swap, align 4
  %28 = icmp sgt i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32, i32* @num_swap, align 4
  %32 = call i8* @calloc(i32 %31, i32 4)
  store i8* %32, i8** @lswap, align 8
  %33 = load i32, i32* @CPUSTATES, align 4
  store i32 %33, i32* @num_cpustates, align 4
  %34 = load i32, i32* @num_cpustates, align 4
  %35 = icmp sgt i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* @num_cpustates, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = load %struct.statics*, %struct.statics** %2, align 8
  %43 = getelementptr inbounds %struct.statics, %struct.statics* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @calloc(i32 %41, i32 %44)
  store i8* %45, i8** @lcpustates, align 8
  %46 = load i32, i32* @num_cpustates, align 4
  %47 = call i8* @calloc(i32 %46, i32 4)
  %48 = bitcast i8* %47 to i32*
  store i32* %48, i32** @cpustate_columns, align 8
  %49 = load %struct.statics*, %struct.statics** %2, align 8
  %50 = getelementptr inbounds %struct.statics, %struct.statics* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* @memory_names, align 4
  store i32 7, i32* @num_memory, align 4
  %52 = load i32, i32* @num_memory, align 4
  %53 = icmp sgt i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i32, i32* @num_memory, align 4
  %57 = call i8* @calloc(i32 %56, i32 4)
  store i8* %57, i8** @lmemory, align 8
  %58 = load %struct.statics*, %struct.statics** %2, align 8
  %59 = getelementptr inbounds %struct.statics, %struct.statics* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* @arc_names, align 4
  %61 = load %struct.statics*, %struct.statics** %2, align 8
  %62 = getelementptr inbounds %struct.statics, %struct.statics* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* @carc_names, align 4
  store i32 0, i32* @cpustate_total_length, align 4
  %64 = load i8**, i8*** @cpustate_names, align 8
  store i8** %64, i8*** %4, align 8
  %65 = load i32*, i32** @cpustate_columns, align 8
  store i32* %65, i32** %5, align 8
  br label %66

66:                                               ; preds = %85, %11
  %67 = load i8**, i8*** %4, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %86

70:                                               ; preds = %66
  %71 = load i32, i32* @cpustate_total_length, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %5, align 8
  store i32 %71, i32* %72, align 4
  %74 = load i8**, i8*** %4, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i32 1
  store i8** %75, i8*** %4, align 8
  %76 = load i8*, i8** %74, align 8
  %77 = ptrtoint i8* %76 to i32
  %78 = call i32 @strlen(i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %70
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 8
  %83 = load i32, i32* @cpustate_total_length, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* @cpustate_total_length, align 4
  br label %85

85:                                               ; preds = %80, %70
  br label %66

86:                                               ; preds = %66
  br label %87

87:                                               ; preds = %86, %1
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @display_updatecpus(%struct.statics*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

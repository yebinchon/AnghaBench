; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_linker_make_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_linker_make_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64, i32*, i64, i32, i8*, i8*, i64, i64, i64, i64 }

@cold = common dso_local global i32 0, align 4
@kld_sx = common dso_local global i32 0, align 4
@SA_XLOCKED = common dso_local global i32 0, align 4
@FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"linker_make_file: new file, filename='%s' for pathname='%s'\0A\00", align 1
@M_LINKER = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@loadcnt = common dso_local global i64 0, align 8
@linker_files = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @linker_make_file(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* @cold, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @SA_XLOCKED, align 4
  %12 = call i32 @sx_assert(i32* @kld_sx, i32 %11)
  br label %13

13:                                               ; preds = %10, %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i8* @linker_basename(i8* %14)
  store i8* %15, i8** %7, align 8
  %16 = load i32, i32* @FILE, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @KLD_DPF(i32 %16, i8* %18)
  %20 = load i64, i64* %5, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @M_LINKER, align 4
  %23 = load i32, i32* @M_WAITOK, align 4
  %24 = call i64 @kobj_create(i32 %21, i32 %22, i32 %23)
  %25 = inttoptr i64 %24 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %6, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = icmp eq %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %13
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %72

29:                                               ; preds = %13
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 12
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 11
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 10
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 9
  store i64 0, i64* %39, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* @M_LINKER, align 4
  %42 = call i8* @strdup(i8* %40, i32 %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 8
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* @M_LINKER, align 4
  %47 = call i8* @strdup(i8* %45, i32 %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 7
  store i8* %47, i8** %49, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @LINKER_GET_NEXT_FILE_ID(i32 %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 5
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 4
  store i32* null, i32** %57, align 8
  %58 = load i64, i64* @loadcnt, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* @loadcnt, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  store i64 %59, i64* %61, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = call i32 @STAILQ_INIT(i32* %63)
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = call i32 @TAILQ_INIT(i32* %66)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %69 = load i32, i32* @link, align 4
  %70 = call i32 @TAILQ_INSERT_TAIL(i32* @linker_files, %struct.TYPE_4__* %68, i32 %69)
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %71, %struct.TYPE_4__** %3, align 8
  br label %72

72:                                               ; preds = %29, %28
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %73
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i8* @linker_basename(i8*) #1

declare dso_local i32 @KLD_DPF(i32, i8*) #1

declare dso_local i64 @kobj_create(i32, i32, i32) #1

declare dso_local i8* @strdup(i8*, i32) #1

declare dso_local i32 @LINKER_GET_NEXT_FILE_ID(i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

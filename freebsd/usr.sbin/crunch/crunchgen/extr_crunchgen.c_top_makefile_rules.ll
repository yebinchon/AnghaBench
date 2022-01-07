; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/crunch/crunchgen/extr_crunchgen.c_top_makefile_rules.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/crunch/crunchgen/extr_crunchgen.c_top_makefile_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, %struct.TYPE_3__* }

@.str = private unnamed_addr constant [9 x i8] c"LD?= ld\0A\00", align 1
@libs = common dso_local global i64 0, align 8
@libs_so = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"# NOTE: Some LIBS declarations below overridden by LIBS_SO\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"LIBS+=\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"LIBS_SO+=\00", align 1
@makeobj = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"MAKEOBJDIRPREFIX?=%s\0A\00", align 1
@objprefix = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [50 x i8] c"MAKEENV=env MAKEOBJDIRPREFIX=$(MAKEOBJDIRPREFIX)\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"CRUNCHMAKE=$(MAKEENV) $(MAKE)\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"CRUNCHMAKE=$(MAKE)\0A\00", align 1
@buildopts = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"BUILDOPTS+=\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"CRUNCHED_OBJS=\00", align 1
@progs = common dso_local global %struct.TYPE_3__* null, align 8
@.str.10 = private unnamed_addr constant [7 x i8] c" %s.lo\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"SUBMAKE_TARGETS=\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c" %s_make\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"\0ASUBCLEAN_TARGETS=\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c" %s_clean\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"all: objs exe\0Aobjs: $(SUBMAKE_TARGETS)\0A\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"exe: %s\0A\00", align 1
@execfname = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [46 x i8] c"%s: %s.o $(CRUNCHED_OBJS) $(SUBMAKE_TARGETS)\0A\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c".if defined(LIBS_SO) && !empty(LIBS_SO)\0A\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"\09$(CC) -o %s %s.o $(CRUNCHED_OBJS) \\\0A\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"\09\09-Xlinker -Bstatic $(LIBS) \\\0A\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"\09\09-Xlinker -Bdynamic $(LIBS_SO)\0A\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c".else\0A\00", align 1
@.str.25 = private unnamed_addr constant [52 x i8] c"\09$(CC) -static -o %s %s.o $(CRUNCHED_OBJS) $(LIBS)\0A\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c".endif\0A\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"realclean: clean subclean\0A\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"clean:\0A\09rm -f %s *.lo *.o *_stub.c\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"subclean: $(SUBCLEAN_TARGETS)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @top_makefile_rules(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 (i32*, i8*, ...) @fprintf(i32* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %6 = call i64 @subtract_strlst(i64* @libs, i64* @libs_so)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 (i32*, i8*, ...) @fprintf(i32* %9, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 (i32*, i8*, ...) @fprintf(i32* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %14 = load i32*, i32** %2, align 8
  %15 = load i64, i64* @libs, align 8
  %16 = call i32 @output_strlst(i32* %14, i64 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 (i32*, i8*, ...) @fprintf(i32* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %19 = load i32*, i32** %2, align 8
  %20 = load i64, i64* @libs_so, align 8
  %21 = call i32 @output_strlst(i32* %19, i64 %20)
  %22 = load i64, i64* @makeobj, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %11
  %25 = load i32*, i32** %2, align 8
  %26 = load i8*, i8** @objprefix, align 8
  %27 = call i32 (i32*, i8*, ...) @fprintf(i32* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %35

32:                                               ; preds = %11
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 (i32*, i8*, ...) @fprintf(i32* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %24
  %36 = load i64, i64* @buildopts, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 (i32*, i8*, ...) @fprintf(i32* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %41 = load i32*, i32** %2, align 8
  %42 = load i64, i64* @buildopts, align 8
  %43 = call i32 @output_strlst(i32* %41, i64 %42)
  br label %44

44:                                               ; preds = %38, %35
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 (i32*, i8*, ...) @fprintf(i32* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @progs, align 8
  store %struct.TYPE_3__* %47, %struct.TYPE_3__** %3, align 8
  br label %48

48:                                               ; preds = %57, %44
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = icmp ne %struct.TYPE_3__* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load i32*, i32** %2, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 (i32*, i8*, ...) @fprintf(i32* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %51
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  store %struct.TYPE_3__* %60, %struct.TYPE_3__** %3, align 8
  br label %48

61:                                               ; preds = %48
  %62 = load i32*, i32** %2, align 8
  %63 = call i32 (i32*, i8*, ...) @fprintf(i32* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 (i32*, i8*, ...) @fprintf(i32* %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @progs, align 8
  store %struct.TYPE_3__* %66, %struct.TYPE_3__** %3, align 8
  br label %67

67:                                               ; preds = %76, %61
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %69 = icmp ne %struct.TYPE_3__* %68, null
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load i32*, i32** %2, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (i32*, i8*, ...) @fprintf(i32* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %70
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  store %struct.TYPE_3__* %79, %struct.TYPE_3__** %3, align 8
  br label %67

80:                                               ; preds = %67
  %81 = load i32*, i32** %2, align 8
  %82 = call i32 (i32*, i8*, ...) @fprintf(i32* %81, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0))
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** @progs, align 8
  store %struct.TYPE_3__* %83, %struct.TYPE_3__** %3, align 8
  br label %84

84:                                               ; preds = %93, %80
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %86 = icmp ne %struct.TYPE_3__* %85, null
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = load i32*, i32** %2, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 (i32*, i8*, ...) @fprintf(i32* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* %91)
  br label %93

93:                                               ; preds = %87
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  store %struct.TYPE_3__* %96, %struct.TYPE_3__** %3, align 8
  br label %84

97:                                               ; preds = %84
  %98 = load i32*, i32** %2, align 8
  %99 = call i32 (i32*, i8*, ...) @fprintf(i32* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %100 = load i32*, i32** %2, align 8
  %101 = call i32 (i32*, i8*, ...) @fprintf(i32* %100, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0))
  %102 = load i32*, i32** %2, align 8
  %103 = load i8*, i8** @execfname, align 8
  %104 = call i32 (i32*, i8*, ...) @fprintf(i32* %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i8* %103)
  %105 = load i32*, i32** %2, align 8
  %106 = load i8*, i8** @execfname, align 8
  %107 = load i8*, i8** @execfname, align 8
  %108 = call i32 (i32*, i8*, ...) @fprintf(i32* %105, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i64 0, i64 0), i8* %106, i8* %107)
  %109 = load i32*, i32** %2, align 8
  %110 = call i32 (i32*, i8*, ...) @fprintf(i32* %109, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0))
  %111 = load i32*, i32** %2, align 8
  %112 = load i8*, i8** @execfname, align 8
  %113 = load i8*, i8** @execfname, align 8
  %114 = call i32 (i32*, i8*, ...) @fprintf(i32* %111, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i64 0, i64 0), i8* %112, i8* %113)
  %115 = load i32*, i32** %2, align 8
  %116 = call i32 (i32*, i8*, ...) @fprintf(i32* %115, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0))
  %117 = load i32*, i32** %2, align 8
  %118 = call i32 (i32*, i8*, ...) @fprintf(i32* %117, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0))
  %119 = load i32*, i32** %2, align 8
  %120 = call i32 (i32*, i8*, ...) @fprintf(i32* %119, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  %121 = load i32*, i32** %2, align 8
  %122 = load i8*, i8** @execfname, align 8
  %123 = load i8*, i8** @execfname, align 8
  %124 = call i32 (i32*, i8*, ...) @fprintf(i32* %121, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.25, i64 0, i64 0), i8* %122, i8* %123)
  %125 = load i32*, i32** %2, align 8
  %126 = call i32 (i32*, i8*, ...) @fprintf(i32* %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0))
  %127 = load i32*, i32** %2, align 8
  %128 = call i32 (i32*, i8*, ...) @fprintf(i32* %127, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0))
  %129 = load i32*, i32** %2, align 8
  %130 = load i8*, i8** @execfname, align 8
  %131 = call i32 (i32*, i8*, ...) @fprintf(i32* %129, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i64 0, i64 0), i8* %130)
  %132 = load i32*, i32** %2, align 8
  %133 = call i32 (i32*, i8*, ...) @fprintf(i32* %132, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @subtract_strlst(i64*, i64*) #1

declare dso_local i32 @output_strlst(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

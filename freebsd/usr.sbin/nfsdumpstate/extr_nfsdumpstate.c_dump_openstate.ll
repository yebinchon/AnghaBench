; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nfsdumpstate/extr_nfsdumpstate.c_dump_openstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nfsdumpstate/extr_nfsdumpstate.c_dump_openstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nfsd_dumplist = type { i32, i8* }

@DUMPSIZE = common dso_local global i32 0, align 4
@dp = common dso_local global %struct.TYPE_6__* null, align 8
@NFSSVC_DUMPCLIENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Can't perform dump clients syscall\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"%-13s %9.9s %9.9s %9.9s %9.9s %9.9s %9.9s %-45s %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Flags\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"OpenOwner\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Open\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"LockOwner\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Lock\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Deleg\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"OldDeleg\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Clientaddr\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"ClientID\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%-13s \00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"%9d %9d %9d %9d %9d %9d \00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dump_openstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_openstate() #0 {
  %1 = alloca %struct.nfsd_dumplist, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @DUMPSIZE, align 4
  %5 = getelementptr inbounds %struct.nfsd_dumplist, %struct.nfsd_dumplist* %1, i32 0, i32 0
  store i32 %4, i32* %5, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dp, align 8
  %7 = bitcast %struct.TYPE_6__* %6 to i8*
  %8 = getelementptr inbounds %struct.nfsd_dumplist, %struct.nfsd_dumplist* %1, i32 0, i32 1
  store i8* %7, i8** %8, align 8
  %9 = load i32, i32* @NFSSVC_DUMPCLIENTS, align 4
  %10 = call i64 @nfssvc(i32 %9, %struct.nfsd_dumplist* %1)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %0
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %110, %14
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dp, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 7
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @DUMPSIZE, align 4
  %28 = icmp slt i32 %26, %27
  br label %29

29:                                               ; preds = %25, %16
  %30 = phi i1 [ false, %16 ], [ %28, %25 ]
  br i1 %30, label %31, label %114

31:                                               ; preds = %29
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dp, align 8
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @client_flags(i32 %37)
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dp, align 8
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dp, align 8
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dp, align 8
  %53 = load i32, i32* %2, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dp, align 8
  %59 = load i32, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dp, align 8
  %65 = load i32, i32* %2, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dp, align 8
  %71 = load i32, i32* %2, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %45, i32 %51, i32 %57, i32 %63, i32 %69, i32 %75)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dp, align 8
  %78 = load i32, i32* %2, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 8
  switch i32 %82, label %83 [
  ]

83:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %107, %83
  %85 = load i32, i32* %3, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dp, align 8
  %87 = load i32, i32* %2, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 7
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %85, %92
  br i1 %93, label %94, label %110

94:                                               ; preds = %84
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dp, align 8
  %96 = load i32, i32* %2, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 7
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %94
  %108 = load i32, i32* %3, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %3, align 4
  br label %84

110:                                              ; preds = %84
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %112 = load i32, i32* %2, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %2, align 4
  br label %16

114:                                              ; preds = %29
  ret void
}

declare dso_local i64 @nfssvc(i32, %struct.nfsd_dumplist*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @client_flags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

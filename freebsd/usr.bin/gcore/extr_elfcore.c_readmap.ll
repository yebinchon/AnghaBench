; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gcore/extr_elfcore.c_readmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gcore/extr_elfcore.c_readmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_4__*, i8*, i8* }
%struct.kinfo_vmentry = type { i32, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [40 x i8] c"cannot retrieve mappings for %u process\00", align 1
@KVME_PROT_READ = common dso_local global i32 0, align 4
@KVME_FLAG_NOCOREDUMP = common dso_local global i32 0, align 4
@KVME_TYPE_DEAD = common dso_local global i64 0, align 8
@KVME_TYPE_UNKNOWN = common dso_local global i64 0, align 8
@pflags = common dso_local global i32 0, align 4
@PFLAGS_FULL = common dso_local global i32 0, align 4
@KVME_TYPE_DEFAULT = common dso_local global i64 0, align 8
@KVME_TYPE_VNODE = common dso_local global i64 0, align 8
@KVME_TYPE_SWAP = common dso_local global i64 0, align 8
@KVME_TYPE_PHYS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@KVME_PROT_EXEC = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32)* @readmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @readmap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__**, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.kinfo_vmentry*, align 8
  %7 = alloca %struct.kinfo_vmentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call %struct.kinfo_vmentry* @kinfo_getvmmap(i32 %10, i32* %9)
  store %struct.kinfo_vmentry* %11, %struct.kinfo_vmentry** %6, align 8
  %12 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %6, align 8
  %13 = icmp eq %struct.kinfo_vmentry* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @err(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %14, %1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__** %5, %struct.TYPE_4__*** %4, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %123, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %126

22:                                               ; preds = %18
  %23 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %23, i64 %25
  store %struct.kinfo_vmentry* %26, %struct.kinfo_vmentry** %7, align 8
  %27 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %7, align 8
  %28 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @KVME_PROT_READ, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %81, label %33

33:                                               ; preds = %22
  %34 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %7, align 8
  %35 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @KVME_FLAG_NOCOREDUMP, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %81, label %40

40:                                               ; preds = %33
  %41 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %7, align 8
  %42 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @KVME_TYPE_DEAD, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %81, label %46

46:                                               ; preds = %40
  %47 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %7, align 8
  %48 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @KVME_TYPE_UNKNOWN, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %81, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* @pflags, align 4
  %54 = load i32, i32* @PFLAGS_FULL, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %52
  %58 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %7, align 8
  %59 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @KVME_TYPE_DEFAULT, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %57
  %64 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %7, align 8
  %65 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @KVME_TYPE_VNODE, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %63
  %70 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %7, align 8
  %71 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @KVME_TYPE_SWAP, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %7, align 8
  %77 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @KVME_TYPE_PHYS, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75, %46, %40, %33, %22
  br label %123

82:                                               ; preds = %75, %69, %63, %57, %52
  %83 = call %struct.TYPE_4__* @calloc(i32 1, i32 32)
  store %struct.TYPE_4__* %83, %struct.TYPE_4__** %3, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %85 = icmp eq %struct.TYPE_4__* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %82
  %89 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %7, align 8
  %90 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  store i8* %92, i8** %94, align 8
  %95 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %7, align 8
  %96 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i8*
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  %101 = load i32, i32* @VM_PROT_READ, align 4
  %102 = load i32, i32* @VM_PROT_WRITE, align 4
  %103 = or i32 %101, %102
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %7, align 8
  %107 = getelementptr inbounds %struct.kinfo_vmentry, %struct.kinfo_vmentry* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @KVME_PROT_EXEC, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %88
  %113 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 8
  br label %118

118:                                              ; preds = %112, %88
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %120 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  store %struct.TYPE_4__* %119, %struct.TYPE_4__** %120, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  store %struct.TYPE_4__** %122, %struct.TYPE_4__*** %4, align 8
  br label %123

123:                                              ; preds = %118, %81
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %8, align 4
  br label %18

126:                                              ; preds = %18
  %127 = load %struct.kinfo_vmentry*, %struct.kinfo_vmentry** %6, align 8
  %128 = call i32 @free(%struct.kinfo_vmentry* %127)
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  ret %struct.TYPE_4__* %129
}

declare dso_local %struct.kinfo_vmentry* @kinfo_getvmmap(i32, i32*) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local %struct.TYPE_4__* @calloc(i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @free(%struct.kinfo_vmentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

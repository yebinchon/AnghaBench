; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_bootrom.c_bootrom_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_bootrom.c_bootrom_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.stat = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Error opening bootrom \22%s\22: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Could not fstat bootrom file \22%s\22: %s\0A\00", align 1
@MAX_BOOTROM_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Invalid bootrom size %ld\0A\00", align 1
@PAGE_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"Bootrom size %ld is not a multiple of the page size\0A\00", align 1
@VM_BOOTROM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"bootrom\00", align 1
@MAP_FAILED = common dso_local global i8* null, align 8
@PROT_READ = common dso_local global i32 0, align 4
@PROT_EXEC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [58 x i8] c"Incomplete read of page %d of bootrom file %s: %ld bytes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bootrom_init(%struct.vmctx* %0, i8* %1) #0 {
  %3 = alloca %struct.vmctx*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 -1, i32* %11, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* @O_RDONLY, align 4
  %15 = call i32 @open(i8* %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i32, i32* @stderr, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* @errno, align 4
  %22 = call i8* @strerror(i32 %21)
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %22)
  br label %120

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @fstat(i32 %25, %struct.stat* %5)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* @stderr, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* @errno, align 4
  %32 = call i8* @strerror(i32 %31)
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %30, i8* %32)
  br label %120

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MAX_BOOTROM_SIZE, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %39, %34
  %45 = load i32, i32* @stderr, align 4
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %120

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PAGE_MASK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load i32, i32* @stderr, align 4
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  br label %120

60:                                               ; preds = %49
  %61 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %62 = load i32, i32* @VM_BOOTROM, align 4
  %63 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @vm_create_devmem(%struct.vmctx* %61, i32 %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  store i8* %65, i8** %8, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** @MAP_FAILED, align 8
  %68 = icmp eq i8* %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %120

70:                                               ; preds = %60
  %71 = load i32, i32* @PROT_READ, align 4
  %72 = load i32, i32* @PROT_EXEC, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %12, align 4
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = sub i64 4294967296, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %6, align 4
  %79 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @VM_BOOTROM, align 4
  %82 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i64 @vm_mmap_memseg(%struct.vmctx* %79, i32 %80, i32 %81, i32 0, i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %70
  br label %120

88:                                               ; preds = %70
  store i32 0, i32* %10, align 4
  br label %89

89:                                               ; preds = %116, %88
  %90 = load i32, i32* %10, align 4
  %91 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @PAGE_SIZE, align 4
  %94 = sdiv i32 %92, %93
  %95 = icmp slt i32 %90, %94
  br i1 %95, label %96, label %119

96:                                               ; preds = %89
  %97 = load i32, i32* %9, align 4
  %98 = load i8*, i8** %8, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @PAGE_SIZE, align 4
  %101 = mul nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %98, i64 %102
  %104 = load i32, i32* @PAGE_SIZE, align 4
  %105 = call i32 @read(i32 %97, i8* %103, i32 %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @PAGE_SIZE, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %96
  %110 = load i32, i32* @stderr, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i8*, i8** %4, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i32 (i32, i8*, ...) @fprintf(i32 %110, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i32 %111, i8* %112, i32 %113)
  br label %120

115:                                              ; preds = %96
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %89

119:                                              ; preds = %89
  store i32 0, i32* %11, align 4
  br label %120

120:                                              ; preds = %119, %109, %87, %69, %55, %44, %28, %18
  %121 = load i32, i32* %9, align 4
  %122 = icmp sge i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @close(i32 %124)
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i32, i32* %11, align 4
  ret i32 %127
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i8* @vm_create_devmem(%struct.vmctx*, i32, i8*, i32) #1

declare dso_local i64 @vm_mmap_memseg(%struct.vmctx*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pstat/extr_pstat.c_filemode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pstat/extr_pstat.c_filemode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.xfile = type { i64, i32, i32, i32, i64, i64, i64 }

@filemode.dtypes = internal constant [7 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"inode\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"fifo\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"kqueue\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"crypto\00", align 1
@kd = common dso_local global i32* null, align 8
@nl = common dso_local global %struct.TYPE_2__* null, align 8
@NL_MAXFILES = common dso_local global i64 0, align 8
@NL_NFILES = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"kvm_read(): %s\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"kern.maxfiles\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"kern.openfiles\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"sysctlbyname()\00", align 1
@totalflag = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [15 x i8] c"%3d/%3d files\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"%d/%d open files\0A\00", align 1
@fhdr64 = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"%*jx\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c" %-6.6s\00", align 1
@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@FAPPEND = common dso_local global i32 0, align 4
@FASYNC = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c" %4s %3d\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c" %3d\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c" %*jx\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c" %*jx\0A\00", align 1
@fhdr32 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @filemode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filemode() #0 {
  %1 = alloca %struct.xfile*, align 8
  %2 = alloca %struct.xfile*, align 8
  %3 = alloca [16 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32*, i32** @kd, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %37

12:                                               ; preds = %0
  %13 = load i32*, i32** @kd, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl, align 8
  %15 = load i64, i64* @NL_MAXFILES, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @kvm_read(i32* %13, i32 %18, i32* %5, i32 4)
  %20 = sext i32 %19 to i64
  %21 = icmp ne i64 %20, 4
  br i1 %21, label %32, label %22

22:                                               ; preds = %12
  %23 = load i32*, i32** @kd, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl, align 8
  %25 = load i64, i64* @NL_NFILES, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @kvm_read(i32* %23, i32 %28, i32* %6, i32 4)
  %30 = sext i32 %29 to i64
  %31 = icmp ne i64 %30, 4
  br i1 %31, label %32, label %36

32:                                               ; preds = %22, %12
  %33 = load i32*, i32** @kd, align 8
  %34 = call i32 @kvm_geterr(i32* %33)
  %35 = call i32 @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %22
  br label %46

37:                                               ; preds = %0
  store i64 4, i64* %7, align 8
  %38 = call i32 @sysctlbyname(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32* %5, i64* %7, i32 0, i32 0)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = call i32 @sysctlbyname(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32* %6, i64* %7, i32 0, i32 0)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %45

43:                                               ; preds = %40, %37
  %44 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %40
  br label %46

46:                                               ; preds = %45, %36
  %47 = load i64, i64* @totalflag, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %50, i32 %51)
  br label %160

53:                                               ; preds = %46
  %54 = call i32 @getfiles(%struct.xfile** %2, i64* %7)
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %160

57:                                               ; preds = %53
  %58 = load i64, i64* %7, align 8
  %59 = udiv i64 %58, 48
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load i8*, i8** @fhdr64, align 8
  %65 = call i32 (i8*, ...) @printf(i8* %64)
  store i32 16, i32* %9, align 4
  %66 = load %struct.xfile*, %struct.xfile** %2, align 8
  store %struct.xfile* %66, %struct.xfile** %1, align 8
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %152, %57
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %157

71:                                               ; preds = %67
  %72 = load %struct.xfile*, %struct.xfile** %1, align 8
  %73 = getelementptr inbounds %struct.xfile, %struct.xfile* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp uge i64 %74, 7
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %152

77:                                               ; preds = %71
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.xfile*, %struct.xfile** %1, align 8
  %80 = getelementptr inbounds %struct.xfile, %struct.xfile* %79, i32 0, i32 6
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 %78, i32 %82)
  %84 = load %struct.xfile*, %struct.xfile** %1, align 8
  %85 = getelementptr inbounds %struct.xfile, %struct.xfile* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds [7 x i8*], [7 x i8*]* @filemode.dtypes, i64 0, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* %88)
  %90 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  store i8* %90, i8** %4, align 8
  %91 = load %struct.xfile*, %struct.xfile** %1, align 8
  %92 = getelementptr inbounds %struct.xfile, %struct.xfile* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @FREAD, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %77
  %98 = load i8*, i8** %4, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %4, align 8
  store i8 82, i8* %98, align 1
  br label %100

100:                                              ; preds = %97, %77
  %101 = load %struct.xfile*, %struct.xfile** %1, align 8
  %102 = getelementptr inbounds %struct.xfile, %struct.xfile* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @FWRITE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i8*, i8** %4, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %4, align 8
  store i8 87, i8* %108, align 1
  br label %110

110:                                              ; preds = %107, %100
  %111 = load %struct.xfile*, %struct.xfile** %1, align 8
  %112 = getelementptr inbounds %struct.xfile, %struct.xfile* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @FAPPEND, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = load i8*, i8** %4, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %4, align 8
  store i8 65, i8* %118, align 1
  br label %120

120:                                              ; preds = %117, %110
  %121 = load %struct.xfile*, %struct.xfile** %1, align 8
  %122 = getelementptr inbounds %struct.xfile, %struct.xfile* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @FASYNC, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = load i8*, i8** %4, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %4, align 8
  store i8 73, i8* %128, align 1
  br label %130

130:                                              ; preds = %127, %120
  %131 = load i8*, i8** %4, align 8
  store i8 0, i8* %131, align 1
  %132 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %133 = load %struct.xfile*, %struct.xfile** %1, align 8
  %134 = getelementptr inbounds %struct.xfile, %struct.xfile* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8* %132, i32 %135)
  %137 = load %struct.xfile*, %struct.xfile** %1, align 8
  %138 = getelementptr inbounds %struct.xfile, %struct.xfile* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* %9, align 4
  %142 = load %struct.xfile*, %struct.xfile** %1, align 8
  %143 = getelementptr inbounds %struct.xfile, %struct.xfile* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = trunc i64 %144 to i32
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 %141, i32 %145)
  %147 = load %struct.xfile*, %struct.xfile** %1, align 8
  %148 = getelementptr inbounds %struct.xfile, %struct.xfile* %147, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = trunc i64 %149 to i32
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i32 16, i32 %150)
  br label %152

152:                                              ; preds = %130, %76
  %153 = load %struct.xfile*, %struct.xfile** %1, align 8
  %154 = getelementptr inbounds %struct.xfile, %struct.xfile* %153, i32 1
  store %struct.xfile* %154, %struct.xfile** %1, align 8
  %155 = load i32, i32* %8, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %8, align 4
  br label %67

157:                                              ; preds = %67
  %158 = load %struct.xfile*, %struct.xfile** %2, align 8
  %159 = call i32 @free(%struct.xfile* %158)
  br label %160

160:                                              ; preds = %157, %56, %49
  ret void
}

declare dso_local i32 @kvm_read(i32*, i32, i32*, i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @kvm_geterr(i32*) #1

declare dso_local i32 @sysctlbyname(i8*, i32*, i64*, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @getfiles(%struct.xfile**, i64*) #1

declare dso_local i32 @free(%struct.xfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

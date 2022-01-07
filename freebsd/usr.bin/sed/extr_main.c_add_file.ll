; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_main.c_add_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_main.c_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_flist = type { i8*, %struct.s_flist* }

@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@fl_nextp = common dso_local global %struct.s_flist** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @add_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.s_flist*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call %struct.s_flist* @malloc(i32 16)
  store %struct.s_flist* %4, %struct.s_flist** %3, align 8
  %5 = icmp eq %struct.s_flist* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %1
  %9 = load %struct.s_flist*, %struct.s_flist** %3, align 8
  %10 = getelementptr inbounds %struct.s_flist, %struct.s_flist* %9, i32 0, i32 1
  store %struct.s_flist* null, %struct.s_flist** %10, align 8
  %11 = load %struct.s_flist*, %struct.s_flist** %3, align 8
  %12 = load %struct.s_flist**, %struct.s_flist*** @fl_nextp, align 8
  store %struct.s_flist* %11, %struct.s_flist** %12, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = load %struct.s_flist*, %struct.s_flist** %3, align 8
  %15 = getelementptr inbounds %struct.s_flist, %struct.s_flist* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load %struct.s_flist*, %struct.s_flist** %3, align 8
  %17 = getelementptr inbounds %struct.s_flist, %struct.s_flist* %16, i32 0, i32 1
  store %struct.s_flist** %17, %struct.s_flist*** @fl_nextp, align 8
  ret void
}

declare dso_local %struct.s_flist* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

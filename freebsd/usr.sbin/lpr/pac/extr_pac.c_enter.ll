; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/pac/extr_pac.c_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/pac/extr_pac.c_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hent = type { i8*, double, %struct.hent*, i64 }

@hcount = common dso_local global i32 0, align 4
@hashtab = common dso_local global %struct.hent** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hent* (i8*)* @enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hent* @enter(i8* %0) #0 {
  %2 = alloca %struct.hent*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hent*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call %struct.hent* @lookup(i8* %6)
  store %struct.hent* %7, %struct.hent** %4, align 8
  %8 = icmp ne %struct.hent* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load %struct.hent*, %struct.hent** %4, align 8
  store %struct.hent* %10, %struct.hent** %2, align 8
  br label %47

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @hash(i8* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @hcount, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @hcount, align 4
  %16 = call i64 @calloc(i32 32, i32 1)
  %17 = inttoptr i64 %16 to %struct.hent*
  store %struct.hent* %17, %struct.hent** %4, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = add nsw i32 %19, 1
  %21 = call i64 @calloc(i32 1, i32 %20)
  %22 = inttoptr i64 %21 to i8*
  %23 = load %struct.hent*, %struct.hent** %4, align 8
  %24 = getelementptr inbounds %struct.hent, %struct.hent* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.hent*, %struct.hent** %4, align 8
  %26 = getelementptr inbounds %struct.hent, %struct.hent* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @strcpy(i8* %27, i8* %28)
  %30 = load %struct.hent*, %struct.hent** %4, align 8
  %31 = getelementptr inbounds %struct.hent, %struct.hent* %30, i32 0, i32 1
  store double 0.000000e+00, double* %31, align 8
  %32 = load %struct.hent*, %struct.hent** %4, align 8
  %33 = getelementptr inbounds %struct.hent, %struct.hent* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.hent**, %struct.hent*** @hashtab, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.hent*, %struct.hent** %34, i64 %36
  %38 = load %struct.hent*, %struct.hent** %37, align 8
  %39 = load %struct.hent*, %struct.hent** %4, align 8
  %40 = getelementptr inbounds %struct.hent, %struct.hent* %39, i32 0, i32 2
  store %struct.hent* %38, %struct.hent** %40, align 8
  %41 = load %struct.hent*, %struct.hent** %4, align 8
  %42 = load %struct.hent**, %struct.hent*** @hashtab, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.hent*, %struct.hent** %42, i64 %44
  store %struct.hent* %41, %struct.hent** %45, align 8
  %46 = load %struct.hent*, %struct.hent** %4, align 8
  store %struct.hent* %46, %struct.hent** %2, align 8
  br label %47

47:                                               ; preds = %11, %9
  %48 = load %struct.hent*, %struct.hent** %2, align 8
  ret %struct.hent* %48
}

declare dso_local %struct.hent* @lookup(i8*) #1

declare dso_local i32 @hash(i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

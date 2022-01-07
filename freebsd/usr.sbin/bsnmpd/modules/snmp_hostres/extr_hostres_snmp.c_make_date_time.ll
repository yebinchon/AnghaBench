; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_snmp.c_make_date_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_snmp.c_make_date_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i8, i8, i8, i8, i8, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @make_date_time(i8* %0, %struct.tm* %1, i8 signext %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tm*, align 8
  %6 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store %struct.tm* %1, %struct.tm** %5, align 8
  store i8 %2, i8* %6, align 1
  %7 = load %struct.tm*, %struct.tm** %5, align 8
  %8 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %9, 1900
  %11 = ashr i32 %10, 8
  %12 = trunc i32 %11 to i8
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 %12, i8* %14, align 1
  %15 = load %struct.tm*, %struct.tm** %5, align 8
  %16 = getelementptr inbounds %struct.tm, %struct.tm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1900
  %19 = trunc i32 %18 to i8
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 %19, i8* %21, align 1
  %22 = load %struct.tm*, %struct.tm** %5, align 8
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %22, i32 0, i32 1
  %24 = load i8, i8* %23, align 4
  %25 = sext i8 %24 to i32
  %26 = add nsw i32 %25, 1
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  store i8 %27, i8* %29, align 1
  %30 = load %struct.tm*, %struct.tm** %5, align 8
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %30, i32 0, i32 2
  %32 = load i8, i8* %31, align 1
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 3
  store i8 %32, i8* %34, align 1
  %35 = load %struct.tm*, %struct.tm** %5, align 8
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %35, i32 0, i32 3
  %37 = load i8, i8* %36, align 2
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 4
  store i8 %37, i8* %39, align 1
  %40 = load %struct.tm*, %struct.tm** %5, align 8
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %40, i32 0, i32 4
  %42 = load i8, i8* %41, align 1
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 5
  store i8 %42, i8* %44, align 1
  %45 = load %struct.tm*, %struct.tm** %5, align 8
  %46 = getelementptr inbounds %struct.tm, %struct.tm* %45, i32 0, i32 5
  %47 = load i8, i8* %46, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 6
  store i8 %47, i8* %49, align 1
  %50 = load i8, i8* %6, align 1
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 7
  store i8 %50, i8* %52, align 1
  %53 = load %struct.tm*, %struct.tm** %5, align 8
  %54 = getelementptr inbounds %struct.tm, %struct.tm* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %3
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 8
  store i8 45, i8* %59, align 1
  br label %63

60:                                               ; preds = %3
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 8
  store i8 43, i8* %62, align 1
  br label %63

63:                                               ; preds = %60, %57
  %64 = load %struct.tm*, %struct.tm** %5, align 8
  %65 = getelementptr inbounds %struct.tm, %struct.tm* %64, i32 0, i32 6
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @labs(i64 %66)
  %68 = sdiv i32 %67, 3600
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 9
  store i8 %69, i8* %71, align 1
  %72 = load %struct.tm*, %struct.tm** %5, align 8
  %73 = getelementptr inbounds %struct.tm, %struct.tm* %72, i32 0, i32 6
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @labs(i64 %74)
  %76 = srem i32 %75, 3600
  %77 = sdiv i32 %76, 60
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %4, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 10
  store i8 %78, i8* %80, align 1
  ret i32 11
}

declare dso_local i32 @labs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

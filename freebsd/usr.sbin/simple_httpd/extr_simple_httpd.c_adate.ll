; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/simple_httpd/extr_simple_httpd.c_adate.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/simple_httpd/extr_simple_httpd.c_adate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@adate.out = internal global [50 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [30 x i8] c"%02d:%02d:%02d %02d/%02d/%02d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @adate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.tm*, align 8
  %3 = call i32 @time(i32* %1)
  %4 = call %struct.tm* @localtime(i32* %1)
  store %struct.tm* %4, %struct.tm** %2, align 8
  %5 = load %struct.tm*, %struct.tm** %2, align 8
  %6 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.tm*, %struct.tm** %2, align 8
  %9 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.tm*, %struct.tm** %2, align 8
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.tm*, %struct.tm** %2, align 8
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.tm*, %struct.tm** %2, align 8
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  %21 = load %struct.tm*, %struct.tm** %2, align 8
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @adate.out, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10, i32 %13, i32 %16, i32 %20, i32 %23)
  ret i8* getelementptr inbounds ([50 x i8], [50 x i8]* @adate.out, i64 0, i64 0)
}

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

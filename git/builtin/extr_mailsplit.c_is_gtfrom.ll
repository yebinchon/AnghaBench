; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_mailsplit.c_is_gtfrom.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_mailsplit.c_is_gtfrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c">From \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"From \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*)* @is_gtfrom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_gtfrom(%struct.strbuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  %6 = call i64 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i64 %6, i64* %4, align 8
  %7 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %8 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

13:                                               ; preds = %1
  %14 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %15 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @strspn(i64 %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = add i64 %23, %24
  %26 = call i64 @starts_with(i64 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %20, %13
  %29 = phi i1 [ false, %13 ], [ %27, %20 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %28, %12
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strspn(i64, i8*) #1

declare dso_local i64 @starts_with(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

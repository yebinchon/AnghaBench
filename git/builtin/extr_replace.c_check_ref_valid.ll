; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_replace.c_check_ref_valid.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_replace.c_check_ref_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@git_replace_ref_base = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"'%s' is not a valid ref name\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"replace ref '%s' already exists\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.object_id*, %struct.strbuf*, i32)* @check_ref_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_ref_valid(%struct.object_id* %0, %struct.object_id* %1, %struct.strbuf* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca %struct.strbuf*, align 8
  %9 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %6, align 8
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store %struct.strbuf* %2, %struct.strbuf** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %11 = call i32 @strbuf_reset(%struct.strbuf* %10)
  %12 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %13 = load i32, i32* @git_replace_ref_base, align 4
  %14 = load %struct.object_id*, %struct.object_id** %6, align 8
  %15 = call i32 @oid_to_hex(%struct.object_id* %14)
  %16 = call i32 @strbuf_addf(%struct.strbuf* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %15)
  %17 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %18 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @check_refname_format(i32 %19, i32 0)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @error(i32 %23, i32 %26)
  store i32 %27, i32* %5, align 4
  br label %49

28:                                               ; preds = %4
  %29 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %30 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.object_id*, %struct.object_id** %7, align 8
  %33 = call i64 @read_ref(i32 %31, %struct.object_id* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.object_id*, %struct.object_id** %7, align 8
  %37 = call i32 @oidclr(%struct.object_id* %36)
  br label %48

38:                                               ; preds = %28
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %44 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @error(i32 %42, i32 %45)
  store i32 %46, i32* %5, align 4
  br label %49

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %35
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %41, %22
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i32) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i64 @check_refname_format(i32, i32) #1

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @read_ref(i32, %struct.object_id*) #1

declare dso_local i32 @oidclr(%struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

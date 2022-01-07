; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_blame.c_get_commit_info.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_blame.c_get_commit_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.commit_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"\0Aauthor \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"\0Acommitter \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit*, %struct.commit_info*, i32)* @get_commit_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_commit_info(%struct.commit* %0, %struct.commit_info* %1, i32 %2) #0 {
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.commit_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.commit* %0, %struct.commit** %4, align 8
  store %struct.commit_info* %1, %struct.commit_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.commit_info*, %struct.commit_info** %5, align 8
  %12 = call i32 @commit_info_init(%struct.commit_info* %11)
  %13 = call i8* (...) @get_log_output_encoding()
  store i8* %13, i8** %9, align 8
  %14 = load %struct.commit*, %struct.commit** %4, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = call i8* @logmsg_reencode(%struct.commit* %14, i32* null, i8* %15)
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = load %struct.commit_info*, %struct.commit_info** %5, align 8
  %19 = getelementptr inbounds %struct.commit_info, %struct.commit_info* %18, i32 0, i32 8
  %20 = load %struct.commit_info*, %struct.commit_info** %5, align 8
  %21 = getelementptr inbounds %struct.commit_info, %struct.commit_info* %20, i32 0, i32 7
  %22 = load %struct.commit_info*, %struct.commit_info** %5, align 8
  %23 = getelementptr inbounds %struct.commit_info, %struct.commit_info* %22, i32 0, i32 6
  %24 = load %struct.commit_info*, %struct.commit_info** %5, align 8
  %25 = getelementptr inbounds %struct.commit_info, %struct.commit_info* %24, i32 0, i32 5
  %26 = call i32 @get_ac_line(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %19, i32* %21, i32* %23, i32* %25)
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %3
  %30 = load %struct.commit*, %struct.commit** %4, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @unuse_commit_buffer(%struct.commit* %30, i8* %31)
  br label %66

33:                                               ; preds = %3
  %34 = load i8*, i8** %10, align 8
  %35 = load %struct.commit_info*, %struct.commit_info** %5, align 8
  %36 = getelementptr inbounds %struct.commit_info, %struct.commit_info* %35, i32 0, i32 4
  %37 = load %struct.commit_info*, %struct.commit_info** %5, align 8
  %38 = getelementptr inbounds %struct.commit_info, %struct.commit_info* %37, i32 0, i32 3
  %39 = load %struct.commit_info*, %struct.commit_info** %5, align 8
  %40 = getelementptr inbounds %struct.commit_info, %struct.commit_info* %39, i32 0, i32 2
  %41 = load %struct.commit_info*, %struct.commit_info** %5, align 8
  %42 = getelementptr inbounds %struct.commit_info, %struct.commit_info* %41, i32 0, i32 1
  %43 = call i32 @get_ac_line(i8* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %36, i32* %38, i32* %40, i32* %42)
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @find_commit_subject(i8* %44, i8** %8)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %33
  %49 = load %struct.commit_info*, %struct.commit_info** %5, align 8
  %50 = getelementptr inbounds %struct.commit_info, %struct.commit_info* %49, i32 0, i32 0
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @strbuf_add(i32* %50, i8* %51, i32 %52)
  br label %62

54:                                               ; preds = %33
  %55 = load %struct.commit_info*, %struct.commit_info** %5, align 8
  %56 = getelementptr inbounds %struct.commit_info, %struct.commit_info* %55, i32 0, i32 0
  %57 = load %struct.commit*, %struct.commit** %4, align 8
  %58 = getelementptr inbounds %struct.commit, %struct.commit* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @oid_to_hex(i32* %59)
  %61 = call i32 @strbuf_addf(i32* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %54, %48
  %63 = load %struct.commit*, %struct.commit** %4, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @unuse_commit_buffer(%struct.commit* %63, i8* %64)
  br label %66

66:                                               ; preds = %62, %29
  ret void
}

declare dso_local i32 @commit_info_init(%struct.commit_info*) #1

declare dso_local i8* @get_log_output_encoding(...) #1

declare dso_local i8* @logmsg_reencode(%struct.commit*, i32*, i8*) #1

declare dso_local i32 @get_ac_line(i8*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @unuse_commit_buffer(%struct.commit*, i8*) #1

declare dso_local i32 @find_commit_subject(i8*, i8**) #1

declare dso_local i32 @strbuf_add(i32*, i8*, i32) #1

declare dso_local i32 @strbuf_addf(i32*, i8*, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_common.c_parse_included_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_common.c_parse_included_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32 }

@AUTO_INCLUDE_PATH = common dso_local global i8* null, align 8
@F_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"directory services not configured; %s does not exist\00", align 1
@yyin = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to handle remote map \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.node*, i8*)* @parse_included_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_included_map(%struct.node* %0, i8* %1) #0 {
  %3 = alloca %struct.node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 45
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 47
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i8*, i8** @AUTO_INCLUDE_PATH, align 8
  %21 = load i32, i32* @F_OK, align 4
  %22 = call i32 @access(i8* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i8*, i8** @AUTO_INCLUDE_PATH, align 8
  %27 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %25, %2
  %29 = load i8*, i8** @AUTO_INCLUDE_PATH, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32* @auto_popen(i8* %29, i8* %30, i32* null)
  store i32* %31, i32** @yyin, align 8
  %32 = load i32*, i32** @yyin, align 8
  %33 = icmp ne i32* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.node*, %struct.node** %3, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @parse_map_yyin(%struct.node* %36, i8* %37, i32* null)
  %39 = load i32*, i32** @yyin, align 8
  %40 = call i32 @auto_pclose(i32* %39)
  store i32 %40, i32* %5, align 4
  store i32* null, i32** @yyin, align 8
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %28
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %43, %28
  %47 = load %struct.node*, %struct.node** %3, align 8
  %48 = call i32 @node_expand_includes(%struct.node* %47, i32 0)
  %49 = load %struct.node*, %struct.node** %3, align 8
  %50 = call i32 @node_expand_direct_maps(%struct.node* %49)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @access(i8*, i32) #1

declare dso_local i32 @log_errx(i32, i8*, i8*) #1

declare dso_local i32* @auto_popen(i8*, i8*, i32*) #1

declare dso_local i32 @parse_map_yyin(%struct.node*, i8*, i32*) #1

declare dso_local i32 @auto_pclose(i32*) #1

declare dso_local i32 @node_expand_includes(%struct.node*, i32) #1

declare dso_local i32 @node_expand_direct_maps(%struct.node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

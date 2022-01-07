; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_common.c_parse_special_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_common.c_parse_special_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"%s/special_%s\00", align 1
@AUTO_SPECIAL_PREFIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"asprintf\00", align 1
@yyin = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to handle special map \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.node*, i8*, i8*)* @parse_special_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_special_map(%struct.node* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 45
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* @AUTO_SPECIAL_PREFIX, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = call i32 @asprintf(i8** %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %17, i8* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %3
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32* @auto_popen(i8* %26, i8* %27, i32* null)
  store i32* %28, i32** @yyin, align 8
  %29 = load i32*, i32** @yyin, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i8*, i8** %6, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load %struct.node*, %struct.node** %4, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @parse_map_keys_yyin(%struct.node* %36, i8* %37)
  br label %44

39:                                               ; preds = %25
  %40 = load %struct.node*, %struct.node** %4, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @parse_map_yyin(%struct.node* %40, i8* %41, i8* %42)
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i32*, i32** @yyin, align 8
  %46 = call i32 @auto_pclose(i32* %45)
  store i32 %46, i32* %8, align 4
  store i32* null, i32** @yyin, align 8
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %49, %44
  %53 = load %struct.node*, %struct.node** %4, align 8
  %54 = call i32 @node_expand_includes(%struct.node* %53, i32 0)
  %55 = load %struct.node*, %struct.node** %4, align 8
  %56 = call i32 @node_expand_direct_maps(%struct.node* %55)
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @free(i8* %57)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i32, i8*) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i32* @auto_popen(i8*, i8*, i32*) #1

declare dso_local i32 @parse_map_keys_yyin(%struct.node*, i8*) #1

declare dso_local i32 @parse_map_yyin(%struct.node*, i8*, i8*) #1

declare dso_local i32 @auto_pclose(i32*) #1

declare dso_local i32 @log_errx(i32, i8*, i8*) #1

declare dso_local i32 @node_expand_includes(%struct.node*, i32) #1

declare dso_local i32 @node_expand_direct_maps(%struct.node*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

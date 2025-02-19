; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_common.c_parse_master.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_common.c_parse_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"parsing auto_master file at \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@yyin = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"unable to open %s\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"done parsing \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_master(%struct.node* %0, i8* %1) #0 {
  %3 = alloca %struct.node*, align 8
  %4 = alloca i8*, align 8
  store %struct.node* %0, %struct.node** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = call i32 @log_debugx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %5)
  %7 = load i8*, i8** %4, align 8
  %8 = call i32* @fopen(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %8, i32** @yyin, align 8
  %9 = load i32*, i32** @yyin, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %12)
  br label %14

14:                                               ; preds = %11, %2
  %15 = load %struct.node*, %struct.node** %3, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @parse_master_yyin(%struct.node* %15, i8* %16)
  %18 = load i32*, i32** @yyin, align 8
  %19 = call i32 @fclose(i32* %18)
  store i32* null, i32** @yyin, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @log_debugx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %20)
  %22 = load %struct.node*, %struct.node** %3, align 8
  %23 = call i32 @node_expand_includes(%struct.node* %22, i32 1)
  %24 = load %struct.node*, %struct.node** %3, align 8
  %25 = call i32 @node_expand_direct_maps(%struct.node* %24)
  ret void
}

declare dso_local i32 @log_debugx(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @parse_master_yyin(%struct.node*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @node_expand_includes(%struct.node*, i32) #1

declare dso_local i32 @node_expand_direct_maps(%struct.node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

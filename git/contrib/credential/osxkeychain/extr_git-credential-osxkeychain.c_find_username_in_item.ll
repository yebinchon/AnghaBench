; ModuleID = '/home/carl/AnghaBench/git/contrib/credential/osxkeychain/extr_git-credential-osxkeychain.c_find_username_in_item.c'
source_filename = "/home/carl/AnghaBench/git/contrib/credential/osxkeychain/extr_git-credential-osxkeychain.c_find_username_in_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@kSecAccountItemAttr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"username\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @find_username_in_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_username_in_item(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca %struct.TYPE_6__, align 4
  store i32 %0, i32* %2, align 4
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32 1, i32* %5, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %6, align 8
  %7 = load i32, i32* @kSecAccountItemAttr, align 4
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i64 @SecKeychainItemCopyContent(i32 %9, i32* null, %struct.TYPE_5__* %3, i32* null, i32* null)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %20

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @write_item(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %17)
  %19 = call i32 @SecKeychainItemFreeContent(%struct.TYPE_5__* %3, i32* null)
  br label %20

20:                                               ; preds = %13, %12
  ret void
}

declare dso_local i64 @SecKeychainItemCopyContent(i32, i32*, %struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @write_item(i8*, i32, i32) #1

declare dso_local i32 @SecKeychainItemFreeContent(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/git/contrib/credential/osxkeychain/extr_git-credential-osxkeychain.c_delete_internet_password.c'
source_filename = "/home/carl/AnghaBench/git/contrib/credential/osxkeychain/extr_git-credential-osxkeychain.c_delete_internet_password.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@protocol = common dso_local global i32 0, align 4
@host = common dso_local global i32 0, align 4
@KEYCHAIN_ARGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @delete_internet_password to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_internet_password() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @protocol, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32, i32* @host, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4, %0
  br label %16

8:                                                ; preds = %4
  %9 = load i32, i32* @KEYCHAIN_ARGS, align 4
  %10 = call i64 @SecKeychainFindInternetPassword(i32 %9, i32 0, i32* null, i32* %1)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %16

13:                                               ; preds = %8
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @SecKeychainItemDelete(i32 %14)
  br label %16

16:                                               ; preds = %13, %12, %7
  ret void
}

declare dso_local i64 @SecKeychainFindInternetPassword(i32, i32, i32*, i32*) #1

declare dso_local i32 @SecKeychainItemDelete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
